<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" indent="yes" />
    <xsl:include href="page-one.xslt"/>
    <xsl:include href="page-two.xslt"/>
    <xsl:include href="page-three.xslt"/>
    <xsl:include href="page-four.xslt"/>

    <!-- <xsl:variable name="notes-row-index" />
    <xsl:variable name="extra-notes-page" />
    <xsl:variable name="extra-debts-page" /> -->

    <xsl:template name="sfs-summary" match="/root">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <html lang="en-GB" class="no-js">
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <title>SFS Summary</title>
            <link rel="stylesheet" href="http://sfs-developer-toolkit.test/html/assets/css/sfs-form.css" />
        </head>
        <!--
            If rendering to screen use class 'screen'
            If rendering as PDF use class 'a4'
        -->
        <body class="screen">
            <div id="container">
                <div class="sfs-form">
                    <xsl:call-template name="page-one" />
                    <xsl:call-template name="page-two" />
                    <xsl:call-template name="page-three" />
                    <xsl:call-template name="additional-notes-extra-page">
                        <xsl:with-param name="notesSelector" select="client-employment-status-other|partner-employment-status-other|housing-tenure-other|notes"></xsl:with-param>
                    </xsl:call-template>
                </div>
            </div>
        </body>
        </html>
    </xsl:template>


    <!--
    Helper template to return a checked box
    and check it a given string is present
    in the SFS Budget
    -->
    <xsl:template name="check-box">
        <xsl:param name = "field-id" />
        <xsl:param name = "field-label" />
        <xsl:param name = "field-value" />
        <xsl:param name = "if-value" />
        <p>
            <xsl:attribute name="class">sfs__checkbox</xsl:attribute>
            <xsl:if test="$field-value = $if-value">
                <xsl:attribute name="class">sfs__checkbox checked</xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:value-of select='$field-id' />
            </xsl:attribute>
            <xsl:value-of select='$field-label' />
        </p>
    </xsl:template>



<!--
    Helper template to return a all priority and non priority debts
    -->


<xsl:template name="debts">
    <xsl:param name="index"/>
    <xsl:param name="total" />
    <xsl:param name="debtType"/>
    <tr>
        <td class="sfs__text sfs__output"><xsl:value-of select="$debtType[$index]/creditor"/></td>
        <td class="sfs__table-highlight sfs__output sfs__number_box"><xsl:value-of select="$debtType[$index]/amount-owed"/></td>
        <!-- Only appear if debtType = non-priority -->
        <xsl:if test="$debtType = debts/non-priority-debts">
            <xsl:variable name="CCJ" select="$debtType[$index]/ccj"/>
            <td class="sfs__text sfs__text--col-3 sfs__output sfs__output--strong">
                <!-- <xsl:value-of select="$CCJ" /> -->
                <xsl:choose>
                <xsl:when test="$CCJ = 'true'">
                    Y
                </xsl:when>
                 <xsl:when test="$CCJ = 'false'">
                    N
                </xsl:when>
                </xsl:choose>
            </td>
        </xsl:if>
        <td class="sfs__text sfs__text--col-4 sfs__output"><xsl:value-of select="$debtType[$index]/repayment-offer"/></td>
    </tr>

    <xsl:if test="not($index = $total)">
        <xsl:call-template name="debts">
            <xsl:with-param name="index" select="$index + 1" />
            <xsl:with-param name="total" select="$total" />
            <xsl:with-param name="debtType" select="$debtType" />
        </xsl:call-template>
    </xsl:if>

</xsl:template>

<xsl:template name="additional-notes">
    <xsl:param name="index" />
    <xsl:param name="notesSelector" />
    <xsl:param name="available-rows" select ="35"/>
    <xsl:param name="charsPerLine" select ="50"/>
    <xsl:param name="remaining-rows"/>
    <xsl:param name="total-number-of-notes" select="count($notesSelector)"/>

 <!-- get string length -->
    <xsl:variable name="note-rows" select="ceiling(string-length($notesSelector[$index]) div $charsPerLine)" />
    <xsl:if test="($available-rows - $note-rows) &gt; 0 ">
       <xsl:if test="$notesSelector[$index] != ''">
            <div class="sfs__row sfs__output sfs__note">
                <p class="sfs__text sfs__output">
                <xsl:choose>
                    <xsl:when test="$notesSelector[$index][local-name()= 'client-employment-status-other']">
                        Employment other:
                    </xsl:when>
                     <xsl:when test="$notesSelector[$index][local-name()= 'partner-employment-status-other']">
                        Partner's employment other:
                    </xsl:when>
                    <xsl:when test="$notesSelector[$index][local-name()= 'housing-tenure-other']">
                        Housing tenure other:
                    </xsl:when>
                </xsl:choose>
                <xsl:value-of select="$notesSelector[$index]"/></p>
            </div>
        </xsl:if>
    </xsl:if>

    <xsl:if test="not($index = $total-number-of-notes)">
            <xsl:call-template name="additional-notes">
                <xsl:with-param name="index" select="$index + 1" />
                <xsl:with-param name="available-rows" select="$available-rows - $note-rows" />
                <xsl:with-param name="notesSelector" select="$notesSelector" />
            </xsl:call-template>
    </xsl:if>

</xsl:template>

    <xsl:template name="additional-notes-extra-page">
        <xsl:param name="index" select="1" />
        <xsl:param name="notesSelector" />
        <xsl:param name="available-rows" select ="43"/>
        <xsl:param name="charsPerLine" select ="50"/>
        <xsl:param name="remaining-rows"/>
        <xsl:param name="total-number-of-notes" select="count($notesSelector)"/>

         <!-- get string length -->
        <xsl:variable name="note-rows" select="ceiling(string-length($notesSelector[$index]) div $charsPerLine)" />
        <xsl:choose>
        <xsl:when test="($available-rows - $note-rows) &lt;= 0 ">
            <xsl:call-template name="page-four">
                <xsl:with-param name="notes-row-index" select="$index" />
            </xsl:call-template>
        </xsl:when>
        <xsl:otherwise>
            <xsl:if test="not($index = $total-number-of-notes)">
                    <xsl:call-template name="additional-notes-extra-page">
                        <xsl:with-param name="index" select="$index + 1" />
                        <xsl:with-param name="available-rows" select="$available-rows - $note-rows" />
                        <xsl:with-param name="notesSelector" select="$notesSelector" />
                    </xsl:call-template>
            </xsl:if>
        </xsl:otherwise>
        </xsl:choose>
    </xsl:template>



</xsl:stylesheet>