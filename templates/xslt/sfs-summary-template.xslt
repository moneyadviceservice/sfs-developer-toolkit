<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" indent="yes" />
    <xsl:include href="helpers/checkboxes.xslt"/>
    <xsl:include href="helpers/debts.xslt"/>
    <xsl:include href="page-one.xslt"/>
    <xsl:include href="page-two.xslt"/>
    <xsl:include href="page-three.xslt"/>
    <xsl:include href="page-four.xslt"/>

    <!-- <xsl:variable name="notes-row-index" />
    <xsl:variable name="extra-notes-page" />
    <xsl:variable name="extra-debts-page" /> -->


    <!-- Set the running total for the notes -->
    <xsl:template name="set-notes-index">
        <xsl:param name="index" />
        <xsl:param name="total" />
        <xsl:variable name="notes-index" select="$index" />
        <xsl:variable name="notes-total" select="$total" />
    </xsl:template>


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

                    <!-- Need to know if we need to include page 3 -->
                    <xsl:call-template name="page-three" />

                    <xsl:call-template name="additional-notes-extra-page">
                        <xsl:with-param name="notesSelector" select="client-employment-status-other|partner-employment-status-other|housing-tenure-other|notes"></xsl:with-param>
                    </xsl:call-template>
                </div>
            </div>
        </body>
        </html>
    </xsl:template>




    <!--  Note: Watch the indentation below - need to keet this as readable as possible -->


<xsl:template name="additional-notes">
    <xsl:param name="index" />
    <xsl:param name="notesSelector" />
    <xsl:param name="available-rows" select ="35"/>
    <xsl:param name="charsPerLine" select ="50"/>
    <xsl:param name="total-number-of-notes" select="count($notesSelector)"/>

    <!-- get string length -->
    <xsl:variable name="note-rows" select="ceiling(string-length($notesSelector[$index]) div $charsPerLine)" />

    <!-- Check for sufficient space for this note -->
    <xsl:choose>
        <xsl:when test="($available-rows - $note-rows) &gt; 0 ">

            <!-- Ignore empty nodes -->
            <xsl:if test="$notesSelector[$index] != ''">

                <div class="sfs__row sfs__output sfs__note">
                    <p class="sfs__text sfs__output">
                    <!-- <xsl:value-of select="$index" />) -->
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

            <xsl:if test="not($index = $total-number-of-notes)">
                <xsl:call-template name="additional-notes">
                    <xsl:with-param name="index" select="$index + 1" />
                    <xsl:with-param name="available-rows" select="$available-rows - $note-rows" />
                    <xsl:with-param name="notesSelector" select="$notesSelector" />
                </xsl:call-template>
            </xsl:if>
        </xsl:when>

        <!-- If we have no more room -->
        <xsl:otherwise>

            Store this: <xsl:value-of select="$index"/>

            <!-- <xsl:call-template name="set-notes-index">
                <xsl:with-param name="index" select="$index" />
                <xsl:with-param name="total" select="$total-number-of-notes" />
            </xsl:call-template> -->

        </xsl:otherwise>
    </xsl:choose>
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