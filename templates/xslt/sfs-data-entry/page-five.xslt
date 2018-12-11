<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="page-five">
        <!-- Page 5 -->
        <div class="sfs-page page">
            <div class="sfs-form__section">
                <div class="sfs-col sfs-col--full">
                    <p class="sfs__label sfs__label--heading">Debts</p>
                </div>
                <div class="sfs-col sfs-col--full"></div>
                <div class="sfs-col sfs-col--half">
                    <p class="sfs__label sfs__label--heading">Priority Debts</p>
                        <table class="sfs__table sfs__table--priority">
                            <tr>
                                <th class="sfs__label">Creditor</th>
                                <th class="sfs__label sfs__text--col-2">Owed (£)</th>
                                <th class="sfs__label sfs__text--col-3">Offer</th>
                            </tr>
                            <xsl:call-template name="debts">
                                <xsl:with-param name="index">1</xsl:with-param>
                                <xsl:with-param name="total">46</xsl:with-param>
                                <xsl:with-param name="debt-xpath" select="debts/priority-debts"></xsl:with-param>
                            </xsl:call-template>
                            <tr>
                                <td class="sfs__text--italic" colspan="3">
                                    (tick if you have continued on next page)
                                    <!-- Add the class 'checked' here if required -->
                                    <span class="sfs__whitebox sfs__whitebox--inline">
                                        <xsl:if test="$count-of-priority-debts > 46">
                                            <xsl:attribute name="class">sfs__whitebox sfs__whitebox--inline checked</xsl:attribute>
                                        </xsl:if>
                                    </span>
                                </td>
                            </tr>
                            <tr class="sfs__total">
                                <td class="sfs__label sfs__text--right">Total priority debts</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-priority-debts"><xsl:value-of select="debts/total-priority-debts" /></td>
                            </tr>
                        </table>
                </div>
                <div class="sfs-col sfs-col--half">
                    <p class="sfs__label sfs__label--heading">Non-Priority Debts</p>
                    <table class="sfs__table sfs__table--non-priority">
                        <tr>
                            <th class="sfs__label">Creditor</th>
                            <th class="sfs__label sfs__text--col-2">Owed (£)</th>
                            <th class="sfs__label sfs__text--col-3">CCJ</th>
                            <th class="sfs__label sfs__text--col-4">Offer</th>
                        </tr>
                         <xsl:call-template name="debts">
                                <xsl:with-param name="index">1</xsl:with-param>
                                <xsl:with-param name="total">46</xsl:with-param>
                                <xsl:with-param name="debt-xpath" select="debts/non-priority-debts"></xsl:with-param>
                            </xsl:call-template>
                        <tr>
                            <td class="sfs__text--italic" colspan="4">(tick if you have continued on next page)
                                <span class="sfs__whitebox sfs__whitebox--inline">
                                    <xsl:if test="$count-of-non-priority-debts > 46">
                                        <xsl:attribute name="class">sfs__whitebox sfs__whitebox--inline checked</xsl:attribute>
                                    </xsl:if></span>
                            </td>
                        </tr>
                        <tr class="sfs__total">
                            <td class="sfs__label sfs__text--right">Total non-priority debts</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-priority-debts"><xsl:value-of select="debts/total-non-priority-debts" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr class="sfs__total">
                            <td class="sfs__text" colspan="3">Token Payments</td>
                            <td class="sfs__table-highlight sfs__text--col-4"><xsl:value-of select="debts/token-payments" /></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>