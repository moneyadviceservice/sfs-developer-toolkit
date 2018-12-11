<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="page-one">

    <!-- Page 1 -->
    <div class="sfs-page page">

        <div class="sfs-form__section">
            <div class="sfs-col sfs-col--half">
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
                    <p class="sfs__label">Partner:</p>partner-name
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
                    <p class="sfs__text sfs__output" id="dependent-children-16-18"><xsl:value-of select="pdependent-children-16-18" /></p>
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

                <div class="sfs__row">
                    <div class="sfs-col sfs-col--main">
                        <p class="sfs__label">
                            <xsl:text disable-output-escaping="yes">Please confirm you have considered (or &lt;br/&gt;
                            discussed with an adviser) the use of any &lt;br/&gt;assets to make lump sum payments
                            </xsl:text>
                        </p>
                    </div>
                    <!-- Add the class 'checked' to the field below -->
                    <div class="sfs-col sfs-col--side">
                        <p class="sfs__label">
                            <xsl:text disable-output-escaping="yes">
                                Tick to confirm ✔&lt;br/&gt;
                            </xsl:text>
                            <span class="sfs__whitebox" id="asset-use-considered">
                            <xsl:if test="asset-use-considered">
                                 <xsl:attribute name="class">sfs__whitebox checked</xsl:attribute>
                             </xsl:if>
                         </span>
                        </p>
                    </div>
                </div>
            </div>
            <div class="sfs-col sfs-col--half">
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

                    <xsl:text disable-output-escaping="yes">
                        &lt;br/&gt;
                    </xsl:text>

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

                    <xsl:text disable-output-escaping="yes">
                        &lt;br/&gt;
                    </xsl:text>

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

                    <xsl:text disable-output-escaping="yes">
                        &lt;br/&gt;
                    </xsl:text>
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

                    <xsl:text disable-output-escaping="yes">
                        &lt;br/&gt;
                    </xsl:text>

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
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th class="sfs__label sfs__label--heading">
                            <strong>Overview</strong>
                        </th>
                        <th class="sfs__label">Amount(£)</th>
                        <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>
                    <tr>
                        <td class="sfs__label">Total income</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-income"><xsl:value-of select="overview/total-monthly-income/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"> No notes defined in schema </td>
                    </tr>
                    <tr>
                        <td class="sfs__label">Total outgoings</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-outgoings"><xsl:value-of select="overview/total-monthly-outgoings" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output">No notes defined in schema</td>
                    </tr>
                    <tr>
                        <td class="sfs__text">(Income – outgoings)</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="income-minus-outgoings"><xsl:value-of select="overview/income-minus-outgoings" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output">No notes defined in schema</td>
                    </tr>
                    <tr>
                        <td class="sfs__text">(Savings contribution)</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="savings-contribution"><xsl:value-of select="overview/savings-contribution" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output">No notes defined in schema</td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Debt admin fee (if applicable):</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="debt-admin-fee"><xsl:value-of select="overview/debt-admin-fee" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output">No notes defined in schema</td>
                    </tr>
                    <tr class="sfs__total">
                        <td class="sfs__label">Total available for priority creditors</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-available-for-priority-debts"><xsl:value-of select="overview/total-available-for-priority-debts" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output">No notes defined in schema</td>
                    </tr>
                    <tr class="sfs__total">
                        <td class="sfs__label">Total available for non-priority creditors</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-available-for-non-priority-debts"><xsl:value-of select="overview/total-available-for-non-priority-debts" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output">No notes defined in schema</td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th colspan="3" class="sfs__label sfs__label--heading">
                            <strong>Monthly Income</strong>
                        </th>
                    </tr>
                    <tr>
                        <th class="sfs__label sfs__label--heading">Earnings</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>
                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">client-salary-or-wages</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Salary or wages (take home)</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/earnings/client-salary-or-wages" />
                        </xsl:call-template>
                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">partner-salary-or-wages</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Partner salary or wages (take home)</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/earnings/partner-salary-or-wages" />
                        </xsl:call-template>
                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">other-earnings</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title">Other earnings (including self employment)</xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="monthly-income/earnings/other-earnings" />
                        </xsl:call-template>
                        <tr class="sfs__total">
                            <td class="sfs__label">Total salary and wages per month</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-earnings"><xsl:value-of select="monthly-income/earnings/total-earnings" /></td>
                            <td class="sfs__table-notes sfs__text sfs__output"></td>
                        </tr>
                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th class="sfs__label sfs__label--heading">Benefits and tax credits</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>
                     <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">other-earnings</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Universal Credit</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/tax-credits-universal-credit" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">jobseekers-allowance-income-based</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Jobseeker’s Allowance (income based)</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/jobseekers-allowance-income-based" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">jobseekers-allowance-contribution-based</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Jobseeker’s Allowance (contribution based)</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/jobseekers-allowance-contribution-based" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">income-support</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Income Support</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/income-support" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">working-tax-credit</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Working Tax Credit</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/working-tax-credit" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">child-tax-credit</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Child Tax Credit</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/child-tax-credit" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">child-benefit</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Child Benefit</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/child-benefit" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">employment-support-allowance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Employment and Support Allowance or Statutory Sick Pay</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/employment-support-allowance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">disability-benefits</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Disability benefits</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/disability-benefits" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">carers-allowance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Carer’s Allowance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/carers-allowance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">local-housing-allowance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Local Housing Allowance / Housing Benefit</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/local-housing-allowance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">council-tax-support</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Council Tax support</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/council-tax-support" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">other-benefits</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Other benefits/tax credits (e.g. maternity benefits)</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-income/benefits/other-benefits" />
                    </xsl:call-template>

                    <tr class="sfs__total last">
                        <td class="sfs__label">Total benefits and tax credits per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-benefits"><xsl:value-of select="monthly-income/benefits/total-benefits" /></td>
                        <td></td>
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