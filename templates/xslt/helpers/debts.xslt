<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!--
    Helper template to return all
    priority and non priority debts
    -->
    <xsl:template name="debts">
        <xsl:param name="index"/>
        <xsl:param name="total" />
        <xsl:param name="debtType"/> <!--  Note: Note sure this is the best name for this property -->
        <tr>
            <td class="sfs__text sfs__output">
                <xsl:value-of select="$debtType[number($index)]/creditor"/> <!-- Case the index as a number -->
            </td>
            <td class="sfs__table-highlight sfs__output sfs__number_box"><xsl:value-of select="$debtType[number($index)]/amount-owed"/></td>

            <!-- Only appear if debtType = non-priority -->
            <xsl:if test="$debtType = debts/non-priority-debts">
                <xsl:variable name="CCJ" select="$debtType[number($index)]/ccj"/>
                <td class="sfs__text sfs__text--col-3 sfs__output sfs__output--strong">
                <xsl:choose>
                    <xsl:when test="$CCJ = 'true'">Y</xsl:when>
                    <xsl:when test="$CCJ = 'false'">N</xsl:when>
                </xsl:choose>
                </td>
            </xsl:if>
            <td class="sfs__text sfs__text--col-4 sfs__output"><xsl:value-of select="$debtType[number($index)]/repayment-offer"/></td>
        </tr>

        <xsl:if test="not($index = $total)">
            <xsl:call-template name="debts">
                <xsl:with-param name="index" select="$index + 1" />
                <xsl:with-param name="total" select="$total" />
                <xsl:with-param name="debtType" select="$debtType" />
            </xsl:call-template>
        </xsl:if>

    </xsl:template>

</xsl:stylesheet>