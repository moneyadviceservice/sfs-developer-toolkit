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

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">state-pensions</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">State pensions</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/pensions/state-pensions" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">private-work-pensions</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Private or work pensions</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/pensions/private-work-pensions" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">pension-credit</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Pension credit</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/pensions/pension-credit" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">other-pensions</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Other pensions</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/pensions/other-pensions" />
                        </xsl:call-template>

                        <tr>
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

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">maintenance-child-support</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Maintenance or child support</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/other-income/maintenance-child-support" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">boarders-lodgers</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Boarders or lodgers</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/other-income/boarders-lodgers" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">non-dependants-contributions</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Non-dependants’ contributions</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/other-income/non-dependants-contributions" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">student-loans-grants</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Student loans and grants</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/other-income/student-loans-grants" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">other-other-income</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Other income</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/other-income/other-other-income" />
                        </xsl:call-template>

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

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">rent</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Rent</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/home-contents/rent" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">ground-rent-service-charges</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">
                            Ground rent &amp; service charges (factor fees if you live in Scotland)</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/home-contents/ground-rent-service-charges" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">mortgage</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Mortgage</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/home-contents/mortgage" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">mortgage-endowment</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Mortgage endowment</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/home-contents/mortgage-endowment" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">secured-loans</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Secured loans</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/home-contents/secured-loans" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">council-tax-rates</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Council tax/rates (including water charge if you live in Scotland and rates in NI)</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/home-contents/council-tax-rates" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">appliance-furniture-rental</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Appliance &amp; furniture rental (including appliance and furniture HP, conditional sale and so on)</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/home-contents/appliance-furniture-rental" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">tv-licence</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">TV licence</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/home-contents/tv-licence" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">other-home-contents</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Other costs</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/home-contents/other-home-contents" />
                        </xsl:call-template>

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

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">gas</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Gas</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/utilities/gas" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">electricity</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Electricity</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/utilities/electricity" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">other-utilities</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Other costs (including coal, oil, calor gas and so on)</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/utilities/other-utilities" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">other-utilities-expenditure</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Other expenditure</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/utilities/other-utilities-expenditure" />
                        </xsl:call-template>

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

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">water-supply</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Water supply</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/water/water-supply" />
                        </xsl:call-template>

                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">water-waste</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Water waste</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/water/water-waste" />
                        </xsl:call-template>

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