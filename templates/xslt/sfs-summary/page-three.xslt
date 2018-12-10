<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="page-three">
                <!-- Page 3 -->
                <div class="sfs-page page">
                    <div class="sfs-form__section sfs-form__section--summary">
                        <div class="sfs-col sfs-col--half">
                            <p class="heading--large">Summary version</p>
                        </div>
                        <div class="sfs-col sfs-col--half">
                            <div class="sfs__logo-wrap">
                                <img class="sfs__logo" src="http://sfs-developer-toolkit.test/html/assets/images/sfs-logo.png" />
                            </div>
                        </div>
                        <div class="sfs-col sfs-col--full">
                            <p class="sfs__label sfs__label--heading">Debts <span class="sfs__text sfs__text--italic">(continued)</span></p>
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
                                    <xsl:with-param name="index">43</xsl:with-param>
                                    <xsl:with-param name="total">86</xsl:with-param>
                                    <xsl:with-param name="debtType" select="debts/priority-debts"></xsl:with-param>
                                </xsl:call-template>

                                <tr class="sfs__total first">
                                    <td class="sfs__label sfs__text--right">Total priority debts</td>
                                    <td class="sfs__table-highlight">£<xsl:value-of select="debts/total-priority-debts" />
                                    </td>
                                    <td class="sfs__text--col-3"></td>
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
                                <xsl:with-param name="index">43</xsl:with-param>
                                <xsl:with-param name="total">85</xsl:with-param>
                                <xsl:with-param name="debtType" select="debts/non-priority-debts"></xsl:with-param>
                            </xsl:call-template>

                                <tr class="sfs__total first">
                                    <td class="sfs__label sfs__text--right">Total non-priority debts</td>
                                    <td class="sfs__table-highlight">£<xsl:value-of select="debts/total-non-priority-debts" />
                                    </td>
                                    <td class="sfs__text--col-3"></td>
                                    <td class="sfs__text--col-4"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

    </xsl:template>

</xsl:stylesheet>