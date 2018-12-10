<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="page-two">

        <!-- Page 2 -->
        <div class="sfs-page page">

            <div class="sfs-form__section sfs-form__section--data-entry">
                <div class="sfs-col sfs-col--full">
                    <table class="sfs__table">
                        <tr>
                            <th colspan="3" class="sfs__label sfs__label--heading">
                                <strong>Monthly Income</strong>
                                <span class="sfs__text--italic">(continued)</span>
                            </th>
                        </tr>
                        <tr>
                            <th class="sfs__label sfs__label--heading">Pensions</th>
                                <th class="sfs__label">Amount(£)</th>
                                <th class="sfs__label sfs__label--heading">Notes</th>
                        </tr>
                        <tr>
                            <td class="sfs__text">State pensions</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="state-pensions"><xsl:value-of select="monthly-income/pensions/state-pensions/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Private or work pensions</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="private-work-pensions"><xsl:value-of select="monthly-income/pensions/private-work-pensions/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Pension credit</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="pension-credit"><xsl:value-of select="monthly-income/pensions/pension-credit/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Other pensions</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-pensions"><xsl:value-of select="monthly-income/pensions/other-pensions/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                            <tr class="sfs__total last">
                                <td class="sfs__label">Total pensions per month</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-pensions"><xsl:value-of select="monthly-income/pensions/total-pensions" /></td>
                                <td class="sfs__table-notes sfs__text sfs__output"></td>
                            </tr>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="sfs-form__section sfs-form__section--data-entry">
                <div class="sfs-col sfs-col--full">
                    <table class="sfs__table">
                        <tr>
                            <th class="sfs__label sfs__label--heading">Other income</th>
                                <th class="sfs__label">Amount(£)</th>
                                <th class="sfs__label sfs__label--heading">Notes</th>
                        </tr>
                        <tr>
                            <td class="sfs__text">Maintenance or child support</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="maintenance-child-support"><xsl:value-of select="monthly-income/other-income/maintenance-child-support/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Boarders or lodgers</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="boarders-lodgers"><xsl:value-of select="monthly-income/other-income/boarders-lodgers/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Non-dependants’ contributions</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="non-dependants-contributions"><xsl:value-of select="monthly-income/other-income/non-dependants-contributions/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Student loans and grants</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="student-loans-grants"><xsl:value-of select="monthly-income/other-income/student-loans-grants/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Other income</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-other-income"><xsl:value-of select="monthly-income/other-income/other-other-income/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr class="sfs__total last">
                            <td class="sfs__label">Total other income per month</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-other-income"><xsl:value-of select="monthly-income/other-income/total-other-income" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="sfs-form__section sfs-form__section--data-entry">
                <div class="sfs-col sfs-col--full">
                    <table class="sfs__table">
                        <tr>
                            <th colspan="3" class="sfs__label sfs__label--heading">
                                <strong>Monthly Outgoings: Fixed Costs</strong>
                            </th>
                        </tr>
                        <tr>
                            <th class="sfs__label sfs__label--heading">Home and contents</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                        </tr>
                        <tr>
                            <td class="sfs__text">Rent</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="rent"><xsl:value-of select="monthly-outgoings/fixed-costs/home-contents/rent/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Ground rent &amp; service charges (factor fees if you live in Scotland)</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="ground-rent-service-charges"><xsl:value-of select="monthly-outgoings/fixed-costs/home-contents/ground-rent-service-charges/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Mortgage</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="mortgage"><xsl:value-of select="monthly-outgoings/fixed-costs/home-contents/mortgage/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Mortgage endowment</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="mortgage-endowment"><xsl:value-of select="monthly-outgoings/fixed-costs/home-contents/mortgage-endowment/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Secured loans</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="secured-loans"><xsl:value-of select="monthly-outgoings/fixed-costs/home-contents/secured-loans/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Council tax/rates (including water charge if you live in Scotland and rates in NI)</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="council-tax-rates"><xsl:value-of select="monthly-outgoings/fixed-costs/home-contents/council-tax-rates/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Appliance &amp; furniture rental (including appliance and furniture HP, conditional sale and so on)</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="appliance-furniture-rental"><xsl:value-of select="monthly-outgoings/fixed-costs/home-contents/appliance-furniture-rental/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">TV licence</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="tv-licence"><xsl:value-of select="monthly-outgoings/fixed-costs/home-contents/tv-licence/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Other costs</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-home-contents"><xsl:value-of select="monthly-outgoings/fixed-costs/home-contents/other-home-contents/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr class="sfs__total">
                            <td class="sfs__label">Total home &amp; contents costs per month</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-home-contents"><xsl:value-of select="monthly-outgoings/fixed-costs/home-contents/total-home-contents" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="sfs-form__section sfs-form__section--data-entry">
                <div class="sfs-col sfs-col--full">
                    <table class="sfs__table">
                        <tr>
                            <th class="sfs__label sfs__label--heading">Utilities</th>
                                <th class="sfs__label">Amount(£)</th>
                                <th class="sfs__label sfs__label--heading">Notes</th>
                        </tr>
                        <tr>
                            <td class="sfs__text">Gas</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="gas"><xsl:value-of select="monthly-outgoings/fixed-costs/utilities/gas/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Electricity</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="electricity"><xsl:value-of select="monthly-outgoings/fixed-costs/utilities/electricity/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Other costs (including coal, oil, calor gas and so on)</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-utilities"><xsl:value-of select="monthly-outgoings/fixed-costs/utilities/other-utilities/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Other expenditure</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-utilities-expenditure"><xsl:value-of select="monthly-outgoings/fixed-costs/utilities/other-utilities-expenditure/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr class="sfs__total last">
                            <td class="sfs__label">Total utilities costs per month</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-utilities"><xsl:value-of select="monthly-outgoings/fixed-costs/utilities/total-utilities" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="sfs-form__section sfs-form__section--data-entry">
                <div class="sfs-col sfs-col--full">
                    <table class="sfs__table">
                        <tr>
                            <th class="sfs__label sfs__label--heading">Water</th>
                                <th class="sfs__label">Amount(£)</th>
                                <th class="sfs__label sfs__label--heading">Notes</th>
                        </tr>
                        <tr>
                            <td class="sfs__text">Water supply</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="water-supply"><xsl:value-of select="monthly-outgoings/fixed-costs/water/water-supply/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Water waste</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="water-waste"><xsl:value-of select="monthly-outgoings/fixed-costs/water/water-waste/monthly-amount" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                        <tr class="sfs__total last">
                            <td class="sfs__label">Total water costs per month</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-water"><xsl:value-of select="monthly-outgoings/fixed-costs/water/total-water" /></td>
                        </tr>
                        <tr class="sfs__total">
                            <td></td>
                            <td></td>
                            <td class="sfs__text--italic sfs__text--right sfs__text--right-pad">(continued overleaf)</td>
                        </tr>
                    </table>
                </div>
            </div>

        </div>

    </xsl:template>

</xsl:stylesheet>