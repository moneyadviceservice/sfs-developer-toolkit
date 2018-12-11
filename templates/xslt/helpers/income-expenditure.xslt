<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<!-- Data entry template note helpers -->

    <!--
    Output the income/expenditure title, amount and notes in a table row
    -->
    <xsl:template name="income-expenditure-row">
        <xsl:param name="income-expenditure-selector" />
        <xsl:param name="income-expenditure-title" />
        <xsl:param name="income-expenditure-id" />
        <xsl:variable name="continued-text"> (continued...)</xsl:variable>
        <tr>
            <td class="sfs__text">
                <xsl:value-of select="$income-expenditure-title" />
            </td>
            <td class="sfs__table-highlight sfs__output sfs__number_box">
                <xsl:attribute name="id">
                    <xsl:value-of select='$income-expenditure-id' />
                </xsl:attribute>
                <xsl:value-of select="$income-expenditure-selector/monthly-amount" />
            </td>
            <td class="sfs__table-notes sfs__text sfs__output">
            <!-- If the notes for this income/expenditure contain some value -->
                <xsl:if test="$income-expenditure-selector/notes != ''">
                    <xsl:choose>
                     <!-- When the full note fit in the field, output the full note -->
                        <xsl:when test="string-length($income-expenditure-selector/notes) &lt;= $note-row-length">
                            <xsl:value-of select="$income-expenditure-selector/notes" />
                        </xsl:when>
                         <!-- If the full note cannot fit in the field, trunacte it and concatate with 'continued text' string -->
                        <xsl:otherwise>
                            <xsl:value-of select="concat(substring($income-expenditure-selector/notes, 1, 40), $continued-text)" />
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
            </td>
        </tr>
    </xsl:template>

    <!--
    Output amy income/expenditure notes which were not fully printed onto
    the additional notes page (page six)
     -->
    <xsl:template name="income-expenditure-additional-notes">
        <xsl:param name="monthly-income-additional-notes-selector" select="monthly-income/*/*" />
        <xsl:for-each select="$monthly-income-additional-notes-selector">

            <!-- If the full note is larger than the max length of the note row out put it here-->
            <xsl:if test="string-length(notes) &gt; $note-row-length">
                <div class="sfs__row">
                    <p class="sfs__output">
                        <strong>
                            <!-- Section name -->
                            <xsl:call-template name="convert-node-name-to-title">
                                <xsl:with-param name="node-name"><xsl:value-of select='name(parent::*)' /> : </xsl:with-param>
                            </xsl:call-template>
                        </strong>
                        <!-- Sub section name -->
                        <xsl:call-template name="convert-node-name-to-title">
                                <xsl:with-param name="node-name"><xsl:value-of select="local-name()" /> </xsl:with-param>
                        </xsl:call-template> -
                        <xsl:value-of select="notes" />
                    </p>
                </div>
            </xsl:if>

        </xsl:for-each>
    </xsl:template>


    <!--
    Out put any other-essential costs which didnt fit onto page 2
    -->
    <xsl:template name="additional-other-essential-costs">

        <!-- if any other essentials costs need to be included on the additionl notes page -->
        <xsl:if test="$display-other-essential-costs-on-page-six = 'y'">

         <!-- Select any other-essential-costs which were not output the first time -->
            <xsl:for-each select="$other-essential-costs-xpath[position()&gt;$maximum-other-essential-costs]">
            <div class="sfs__row">
                        <p class="sfs__output">
                            <strong>Other essential cost: </strong>
                                £<xsl:value-of select="monthly-amount" /> -
                                <xsl:value-of select="notes" />
                        </p>
                    </div>
            </xsl:for-each>
        </xsl:if>
    </xsl:template>


    <!--
    Convert a node name to a proper name
    (removes any hyphens and makes the first character uppercase)
    -->
    <xsl:template name="convert-node-name-to-title">
        <xsl:param name="node-name" />
        <xsl:call-template name="upper-case-first">
            <xsl:with-param name="string"><xsl:value-of select="translate($node-name, '-', ' ')" /></xsl:with-param>
        </xsl:call-template>
    </xsl:template>

    <!--
    Convert first letter of a string to uppercase
    -->
    <xsl:template name="upper-case-first">
        <xsl:param name="string" />
        <xsl:variable name="vLower" select="'abcdefghijklmnopqrstuvwxyz'"/>
        <xsl:variable name="vUpper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>

        <xsl:value-of select=
        "concat (translate ( substring($string,1,1), $vLower, $vUpper),
                    substring($string,2,string-length($string) -1))" />
    </xsl:template>

</xsl:stylesheet>