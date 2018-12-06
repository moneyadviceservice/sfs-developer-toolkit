<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

     <xsl:template name="page-one">
        <!--  Page 1 -->
        <div class="sfs-page page">
            <div class="sfs-form__section sfs-form__section--underline">  <!-- Page 1 Top Section -->
                <div class="sfs-col sfs-col--half">  <!-- Page 1 Top Section column 1 -->
                    <div class="sfs__row sfs__row--special-padding sfs__row no-border"></div>
                    <div class="sfs__row sfs__row--special-padding">
                        <p class="sfs__label">Name:</p>
                        <p class="sfs__text sfs__output" id="client-name"><xsl:value-of select="client-name" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">D.O.B.:</p>
                        <p class="sfs__text sfs__output" id="client-date-of-birth"><xsl:value-of select="client-date-of-birth" /></p>
                    </div>
                    <!-- Add the class 'checked' to applicable option below -->
                    <div class="sfs__row">
                        <p class="sfs__label">Application:</p>

                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">is-joint-application__yes</xsl:with-param>
                            <xsl:with-param name="field-label">Single</xsl:with-param>
                            <xsl:with-param name="field-value" select="is-joint-application" />
                            <xsl:with-param name="if-value">false</xsl:with-param>
                        </xsl:call-template>

                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">is-joint-application__no</xsl:with-param>
                            <xsl:with-param name="field-label">Joint</xsl:with-param>
                            <xsl:with-param name="field-value" select="is-joint-application" />
                            <xsl:with-param name="if-value">true</xsl:with-param>
                        </xsl:call-template>

                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Partner:</p>
                        <p class="sfs__text">(if applicable):</p>
                        <p class="sfs__text sfs__output" id="partner-name"><xsl:value-of select="partner-name" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Partner D.O.B.:</p>
                        <p class="sfs__text">(if applicable):</p>
                        <p class="sfs__text sfs__output" id="partner-date-of-birth"><xsl:value-of select="partner-date-of-birth" /></p>
                    </div>
                    <div class="sfs__row sfs__row--address">
                        <p class="sfs__label">Address:</p>
                        <p class="sfs__text sfs__output" id="client-address"><xsl:value-of select="client-address" /></p>
                    </div>
                    <div class="sfs__row sfs__row--dependents">
                        <p class="sfs__label">Dependent children:</p>
                        <p class="sfs__text">Under 16:</p>
                        <p class="sfs__text sfs__output" id="dependent-children-under-16"><xsl:value-of select="dependent-children-under-16" /></p>
                        <p class="sfs__text">16-18:</p>
                        <p class="sfs__text sfs__output" id="dependent-children-16-18"><xsl:value-of select="dependent-children-16-18" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Other dependants:</p>
                        <p class="sfs__text sfs__output" id="other-dependents"><xsl:value-of select="other-dependents" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Number in household:</p>
                        <p class="sfs__text sfs__output" id="total-number-in-household"><xsl:value-of select="total-number-in-household" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Number of vehicles in household:</p>
                        <p class="sfs__text sfs__output" id="vehicles"><xsl:value-of select="vehicles" /></p>
                    </div>
                    <!-- Add the class 'checked' to all applicable options -->
                        <div class="sfs__row no-border">
                            <p class="sfs__label">Housing tenure:</p>
                        </div>
                        <div class="sfs__row">
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__owner</xsl:with-param>
                            <xsl:with-param name="field-label">Owner</xsl:with-param>
                            <xsl:with-param name="field-value" select="housing-tenure" />
                            <xsl:with-param name="if-value">Owner</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__mortgage</xsl:with-param>
                            <xsl:with-param name="field-label">Mortgage</xsl:with-param>
                            <xsl:with-param name="field-value" select="housing-tenure" />
                            <xsl:with-param name="if-value">Mortgage</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__private-tenant</xsl:with-param>
                            <xsl:with-param name="field-label">Tenant – private</xsl:with-param>
                            <xsl:with-param name="field-value" select="housing-tenure" />
                            <xsl:with-param name="if-value">Tenant – private</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__social-tenant</xsl:with-param>
                            <xsl:with-param name="field-label">Tenant – social</xsl:with-param>
                            <xsl:with-param name="field-value" select="housing-tenure" />
                            <xsl:with-param name="if-value">Tenant – social</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__living-with-parents</xsl:with-param>
                            <xsl:with-param name="field-label">Living with parents</xsl:with-param>
                            <xsl:with-param name="field-value" select="housing-tenure" />
                            <xsl:with-param name="if-value">Living with parents</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__other</xsl:with-param>
                            <xsl:with-param name="field-label">Other</xsl:with-param>
                            <xsl:with-param name="field-value" select="housing-tenure" />
                            <xsl:with-param name="if-value">Other</xsl:with-param>
                        </xsl:call-template>
                        </div>
                </div> <!-- End of Page 1 Top Section column 1 -->

                <div class="sfs-col sfs-col--half"> <!-- Page 1 Top Section column 2 -->
                    <div class="sfs__logo-wrap">
                        <img class="sfs__logo" src="http://sfs-developer-toolkit.test/html/assets/images/sfs-logo.png" />
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Contact/team name:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Agency:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row sfs__row--address">
                        <p class="sfs__label">Agency address:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Membership code number:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Case reference number:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Date of statement:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Date of review:</p>
                        <p class="sfs__text">(if applicable):</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>

                    <!-- Add the class 'checked to all applicable options' -->
                    <div class="sfs__row">
                        <p class="sfs__label">Employment:</p>

                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__full-time</xsl:with-param>
                            <xsl:with-param name="field-label">Full-time</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Full-time</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__part-time</xsl:with-param>
                            <xsl:with-param name="field-label">Part-time</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Part-time</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__unemployed</xsl:with-param>
                            <xsl:with-param name="field-label">Unemployed</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Unemployed</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__not-working-due-to-illness</xsl:with-param>
                            <xsl:with-param name="field-label">Not working due to illness / disability</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Not working due to illness / disability</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__self-employed</xsl:with-param>
                            <xsl:with-param name="field-label">Self-employed</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Self-employed</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__retired</xsl:with-param>
                            <xsl:with-param name="field-label">Retired</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Retired</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__Carer</xsl:with-param>
                            <xsl:with-param name="field-label">Carer</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Carer</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__student</xsl:with-param>
                            <xsl:with-param name="field-label">Student</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Student</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__other</xsl:with-param>
                            <xsl:with-param name="field-label">Other</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Other</xsl:with-param>
                        </xsl:call-template>
                    </div>
                    <!-- Add the class 'checked to all applicable options' -->
                    <div class="sfs__row">
                        <p class="sfs__label">Partner's employment:</p>
                                                <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__full-time</xsl:with-param>
                            <xsl:with-param name="field-label">Full-time</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Full-time</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__part-time</xsl:with-param>
                            <xsl:with-param name="field-label">Part-time</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Part-time</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__unemployed</xsl:with-param>
                            <xsl:with-param name="field-label">Unemployed</xsl:with-param>
                            <xsl:with-param name="field-value" select="client-employment-status" />
                            <xsl:with-param name="if-value">Unemployed</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__not-working-due-to-illness</xsl:with-param>
                            <xsl:with-param name="field-label">Not working due to illness / disability</xsl:with-param>
                            <xsl:with-param name="field-value" select="partner-employment-status" />
                            <xsl:with-param name="if-value">Not working due to illness / disability</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__self-employed</xsl:with-param>
                            <xsl:with-param name="field-label">Self-employed</xsl:with-param>
                            <xsl:with-param name="field-value" select="partner-employment-status" />
                            <xsl:with-param name="if-value">Self-employed</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__retired</xsl:with-param>
                            <xsl:with-param name="field-label">Retired</xsl:with-param>
                            <xsl:with-param name="field-value" select="partner-employment-status" />
                            <xsl:with-param name="if-value">Retired</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__Carer</xsl:with-param>
                            <xsl:with-param name="field-label">Carer</xsl:with-param>
                            <xsl:with-param name="field-value" select="partner-employment-status" />
                            <xsl:with-param name="if-value">Carer</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__student</xsl:with-param>
                            <xsl:with-param name="field-label">Student</xsl:with-param>
                            <xsl:with-param name="field-value" select="partner-employment-status" />
                            <xsl:with-param name="if-value">Student</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__other</xsl:with-param>
                            <xsl:with-param name="field-label">Other</xsl:with-param>
                            <xsl:with-param name="field-value" select="partner-employment-status" />
                            <xsl:with-param name="if-value">Other</xsl:with-param>
                        </xsl:call-template>
                    </div>
                </div> <!-- End of Page 1 Top Section column 2 -->
            </div> <!-- End of Page 1 Top Section -->
            <div class="sfs-form__section"> <!-- Page 1 Bottom Section -->
                    <div class="sfs-col sfs-col--half"> <!-- Page 1 bottom section column 1 -->
                        <table class="sfs__table">
                            <tr>
                                <th class="sfs__label sfs__label--heading">Overview</th>
                                <th class="sfs__label sfs__output">Amount (£)</th>
                            </tr>
                            <tr>
                                <td class="sfs__label">Total income</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-income">£<xsl:value-of select="overview/total-monthly-income" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__label">Total outgoings</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-outgoings">£<xsl:value-of select="overview/total-monthly-outgoings" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Savings contribution</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="savings-contribution">£<xsl:value-of select="overview/savings-contribution" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text no-border">Debt admin fee (if applicable):</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="debt-admin-fee">£<xsl:value-of select="overview/debt-admin-fee" /></td>
                            </tr>
                            <tr class="sfs__total first">
                                <td class="sfs__label">Total available for priority creditors</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-available-for-priority-debts">£<xsl:value-of select="overview/total-available-for-priority-debts" /></td>
                            </tr>
                            <tr class="sfs__total last">
                                <td class="sfs__label">Total available for non-priority creditors</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-available-for-non-priority-debts">£<xsl:value-of select="overview/total-available-for-non-priority-debts" /></td>
                            </tr>
                        </table>

                        <table class="sfs__table">
                            <tr>
                                <th class="sfs__label sfs__label--heading">Monthly Income</th>
                                <th class="sfs__label"></th>
                            </tr>
                            <tr>
                                <td class="sfs__text">Earnings</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-earnings">£<xsl:value-of select="monthly-income/total-earnings" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Benefits and tax credits</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-benefits">£<xsl:value-of select="monthly-income/total-benefits" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Pensions</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-pensions">£<xsl:value-of select="monthly-income/total-pensions" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text no-border">Other income</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-other-income">£<xsl:value-of select="monthly-income/total-other-income" /></td>
                            </tr>
                            <tr class="sfs__total">
                                <td class="sfs__label">Total income</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-income">£<xsl:value-of select="monthly-income/total-monthly-income" /></td>
                            </tr>
                        </table>

                        <table class="sfs__table">
                            <tr>
                                <th class="sfs__label sfs__label--heading">Monthly Outgoings: Fixed Costs</th>
                                <th class="sfs__label"></th>
                            </tr>
                            <tr>
                                <td class="sfs__text">Rent</td>
                             <td class="sfs__table-highlight sfs__output sfs__number_box" id="rent">£<xsl:value-of select="monthly-outgoings/fixed-costs/rent" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Mortgage</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="mortgage">£<xsl:value-of select="monthly-outgoings/fixed-costs/mortgage" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Other secured loans</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="secured-loans">£<xsl:value-of select="monthly-outgoings/fixed-costs/secured-loans" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Council tax / rates</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="council-tax-rates">£<xsl:value-of select="monthly-outgoings/fixed-costs/council-tax-rates" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Other home and contents</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-home-contents">£<xsl:value-of select="monthly-outgoings/fixed-costs/other-home-contents" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Gas</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="gas">£<xsl:value-of select="monthly-outgoings/fixed-costs/gas" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Electric</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="electricity">£<xsl:value-of select="monthly-outgoings/fixed-costs/electricity" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Other utility costs (e.g. coal, oil, calor gas)</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-utilities">£<xsl:value-of select="monthly-outgoings/fixed-costs/other-utilities" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Water</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-water">£<xsl:value-of select="monthly-outgoings/fixed-costs/total-water" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Care and health costs</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-care-health">£<xsl:value-of select="monthly-outgoings/fixed-costs/total-care-health" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Transport and travel</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-transport-travel">£<xsl:value-of select="monthly-outgoings/fixed-costs/total-transport-travel" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">School costs</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-school">£<xsl:value-of select="monthly-outgoings/fixed-costs/total-school" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Pensions and insurances</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-pensions-insurances">£<xsl:value-of select="monthly-outgoings/fixed-costs/total-pensions-insurances" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Professional costs</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-professional">£<xsl:value-of select="monthly-outgoings/fixed-costs/total-professional" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text no-border">Other essential costs</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-other-essential">£<xsl:value-of select="monthly-outgoings/fixed-costs/total-other-essential" /></td>
                            </tr>
                            <tr class="sfs__total">
                                <td class="sfs__label">Total fixed costs</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-fixed-costs">£<xsl:value-of select="monthly-outgoings/fixed-costs/total-fixed-costs" /></td>
                            </tr>
                        </table>

                        <table class="sfs__table">
                            <tr>
                                <th class="sfs__label sfs__label--heading">Monthly Outgoings: Flexible Costs</th>
                                <th class="sfs__label"></th>
                            </tr>
                            <tr>
                                <td class="sfs__text">Communications and leisure</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-communications-leisure">£<xsl:value-of select="overview/total-available-for-non-priority-debts" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text">Food and housekeeping</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-food-housekeeping">£<xsl:value-of select="overview/total-available-for-non-priority-debts" /></td>
                            </tr>
                            <tr>
                                <td class="sfs__text no-border">Personal costs</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-personal">£<xsl:value-of select="overview/total-available-for-non-priority-debts" /></td>
                            </tr>
                            <tr class="sfs__total">
                                <td class="sfs__label">Total flexible costs</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-flexible-costs">£<xsl:value-of select="overview/total-available-for-non-priority-debts" /></td>
                            </tr>
                        </table>


                        <table class="sfs__table sfs__table--spacing">
                            <tr class="sfs__total">
                                <td class="sfs__label">Total monthly outgoings (fixed and flexible)</td>
                                <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-outgoings">£<xsl:value-of select="overview/total-available-for-non-priority-debts" /></td>
                            </tr>
                        </table>
                    </div> <!-- End of Page 1 bottom section column 1 -->
                    <div class="sfs-col sfs-col--half"> <!-- Page 1 bottom section column 2 -->
                        <table class="sfs__table">
                            <tbody>
                                <tr class="sfs__label">
                                    <td class="small-text">
                                    <xsl:text disable-output-escaping="yes">Please confirm you have considered (or &lt;br/&gt;
                                        discussed with an adviser) the use of any &lt;br/&gt;
                                        assets to make lump sum payments
                                    </xsl:text>
                                    </td>
                                    <td class="small-text">
                                    <xsl:text disable-output-escaping="yes">
                                        Tick to&lt;br/&gt;confirm ✔&lt;br/&gt;
                                    </xsl:text>
                                    <!-- Add the class 'checked' to the field below -->
                                        <span class="sfs__whitebox " id="asset-use-considered">
                                            <xsl:if test="confirmations/asset-use-considered">
                                            <xsl:attribute name="class">sfs__whitebox checked</xsl:attribute>
                                            </xsl:if>
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <table class="sfs__table">
                            <div class="sfs__row">
                                <tr class="sfs__label">
                                    <td class="small-text">
                                    <xsl:text disable-output-escaping="yes"> Please confirm that a monthly contribution&lt;br/&gt;
                                        to savings has been considered&lt;br/&gt;
                                        (or discussed with an adviser)
                                        </xsl:text>
                                    </td>
                                    <td class="small-text">
                                    <xsl:text disable-output-escaping="yes">
                                     Tick to&lt;br/&gt;confirm ✔&lt;br/&gt;
                                      </xsl:text>
                                    <!-- Add the class 'checked' to the field below -->
                                        <span class="sfs__whitebox" id="savings-contribution-considered">
                                            <xsl:if test="confirmations/savings-contribution-considered">
                                            <xsl:attribute name="class">sfs__whitebox checked</xsl:attribute>
                                            </xsl:if>
                                        </span>
                                    </td>
                                </tr>
                            </div>
                        </table>

                        <div class="sfs__row extra-padding--top">
                            <p class="sfs__label">
                            <xsl:text disable-output-escaping="yes">
                            Additional notes (e.g. reasons for debt, circumstances,&lt;br/&gt;temporary situations)
                            </xsl:text>
                            </p>
                        </div>

                        <!-- Note: Comment this -->
                        <xsl:call-template name="additional-notes">
                            <xsl:with-param name="notesSelector" select="client-employment-status-other|partner-employment-status-other|housing-tenure-other|notes"></xsl:with-param>
                            <xsl:with-param name="index" select="1" />
                        </xsl:call-template>

						<!-- This is running off the bottom of the page -->
                        <div class="sfs__text-block">
							<p class="sfs__text"></p>
						</div>

                    </div> <!-- End of Page 1 bottom section column 2 -->
            </div> <!-- End of Page 1 Bottom Section -->
        </div> <!-- End of Page 1-->
    </xsl:template>

</xsl:stylesheet>