<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template name="sfs-summary" match="/">
    <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
    <html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>SFS Summary</title>
        <link rel="stylesheet" href="assets/css/sfs-form.css" />
    </head>
    <!--
        If rendering to screen use class 'screen'
        If rendering as PDF use class 'a4'
    -->
    <body class="screen">
        <div id="container">
            <div class="sfs-form">

                <xsl:call-template name="page-one" />

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
            <xsl:if test="contains($if-value, $field-value)">
                <xsl:attribute name="class">sfs__checkbox checked</xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id" select="$field-id" />
            <xsl:value-of select='$field-label' />
        </p>
    </xsl:template>


    <xsl:template name="page-one">
        <!--  Page 1 -->
        <div class="sfs-page page">

            <div class="sfs-form__section sfs-form__section--underline">
                <div class="sfs-col sfs-col--half">
                    <div class="sfs__row sfs__row--special-padding sfs__row no-border"></div>
                    <div class="sfs__row sfs__row--special-padding">
                        <p class="sfs__label">Name:</p>
                        <p class="sfs__text sfs__output" id="client-name"><xsl:value-of select="root/client-name" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">D.O.B.:</p>
                        <p class="sfs__text sfs__output" id="client-date-of-birth"><xsl:value-of select="root/client-date-of-birth" /></p>
                    </div>
                    <!-- Add the class 'checked' to applicable option below -->
                    <div class="sfs__row">
                        <p class="sfs__label">Application:</p>

                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">is-joint-application__yes</xsl:with-param>
                            <xsl:with-param name="field-label">Single</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/is-joint-application" />
                            <xsl:with-param name="if-value">false</xsl:with-param>
                        </xsl:call-template>

                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">is-joint-application__no</xsl:with-param>
                            <xsl:with-param name="field-label">Joint</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/is-joint-application" />
                            <xsl:with-param name="if-value">true</xsl:with-param>
                        </xsl:call-template>

                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Partner:</p>
                        <p class="sfs__text">(if applicable):</p>
                        <p class="sfs__text sfs__output" id="partner-name"><xsl:value-of select="root/partner-name" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Partner D.O.B.:</p>
                        <p class="sfs__text">(if applicable):</p>
                        <p class="sfs__text sfs__output" id="partner-date-of-birth"><xsl:value-of select="root/partner-date-of-birth" /></p>
                    </div>
                    <div class="sfs__row sfs__row--address">
                        <p class="sfs__label">Address:</p>
                        <p class="sfs__text sfs__output" id="client-address"><xsl:value-of select="root/client-address" /></p>
                    </div>
                    <div class="sfs__row sfs__row--dependents">
                        <p class="sfs__label">Dependent children:</p>
                        <p class="sfs__text">Under 16:</p>
                        <p class="sfs__text sfs__output" id="dependent-children-under-16"><xsl:value-of select="root/dependent-children-under-16" /></p>
                        <p class="sfs__text">16-18:</p>
                        <p class="sfs__text sfs__output" id="dependent-children-16-18"><xsl:value-of select="root/dependent-children-16-18" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Other dependants:</p>
                        <p class="sfs__text sfs__output" id="other-dependents"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Number in household:</p>
                        <p class="sfs__text sfs__output" id="total-number-in-household"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Number of vehicles in household:</p>
                        <p class="sfs__text sfs__output" id="vehicles"></p>
                    </div>
                    <!-- Add the class 'checked' to all applicable options -->
                    <div class="sfs__row no-border">
                        <p class="sfs__label">Housing tenure:</p>
                    </div>
                    <div class="sfs__row">

                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__owner</xsl:with-param>
                            <xsl:with-param name="field-label">Owner</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/housing-tenure" />
                            <xsl:with-param name="if-value">Owner</xsl:with-param>
                        </xsl:call-template>

                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__mortgage</xsl:with-param>
                            <xsl:with-param name="field-label">Mortgage</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/housing-tenure" />
                            <xsl:with-param name="if-value">Mortgage</xsl:with-param>
                        </xsl:call-template>

                        <p class="sfs__checkbox" id="housing-tenure__private-tenant">Tenant – private</p>
                        <p class="sfs__checkbox" id="housing-tenure__social-tenant">Tenant – social</p>
                        <p class="sfs__checkbox" id="housing-tenure__living-with-parents">Living with parents</p>
                        <p class="sfs__checkbox" id="housing-tenure__other">Other</p>
                    </div>
                </div>
                <div class="sfs-col sfs-col--half">
                    <div class="sfs__logo-wrap">
                        <img class="sfs__logo" src="assets/images/sfs-logo.png" />
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
                        <p class="sfs__checkbox" id="client-employment-status__full-time">Full-time</p>
                        <p class="sfs__checkbox" id="client-employment-status__part-time">Part-time</p><br />
                        <p class="sfs__checkbox" id="client-employment-status__unemployed">Unemployed</p>
                        <p class="sfs__checkbox" id="client-employment-status__not-working-due-to-illness">Not working due to illness / disability</p><br />
                        <p class="sfs__checkbox" id="client-employment-status__self-employed">Self-employed</p>
                        <p class="sfs__checkbox" id="client-employment-status__retired">Retired</p>
                        <p class="sfs__checkbox" id="client-employment-status__Carer">Carer</p>
                        <p class="sfs__checkbox" id="client-employment-status__student">Student</p>
                        <p class="sfs__checkbox" id="client-employment-status__other">Other</p>
                    </div>
                    <!-- Add the class 'checked to all applicable options' -->
                    <div class="sfs__row">
                        <p class="sfs__label">Partner's employment:</p>
                        <p class="sfs__checkbox" id="partner-employment-status__full-time">Full-time</p>
                        <p class="sfs__checkbox" id="partner-employment-status__part-time">Part-time</p><br />
                        <p class="sfs__checkbox" id="partner-employment-status__unemployed">Unemployed</p>
                        <p class="sfs__checkbox" id="partner-employment-status__not-working-due-to-illness">Not working due to illness / disability</p><br />
                        <p class="sfs__checkbox" id="partner-employment-status__self-employed">Self-employed</p>
                        <p class="sfs__checkbox" id="partner-employment-status__retired">Retired</p>
                        <p class="sfs__checkbox" id="partner-employment-status__Carer">Carer</p>
                        <p class="sfs__checkbox" id="partner-employment-status__student">Student</p>
                        <p class="sfs__checkbox" id="partner-employment-status__other">Other</p>
                    </div>
                </div>
            </div>
            <div class="sfs-form__section">
                <div class="sfs-col sfs-col--half">
                    <table class="sfs__table">
                        <tr>
                            <th class="sfs__label sfs__label--heading">Overview</th>
                            <th class="sfs__label sfs__output">Amount (£)</th>
                        </tr>
                        <tr>
                            <td class="sfs__label">Total income</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-income">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__label">Total outgoings</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-outgoings">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Savings contribution</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="savings-contribution">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text no-border">Debt admin fee (if applicable):</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="debt-admin-fee">&#163;</td>
                        </tr>
                        <tr class="sfs__total first">
                            <td class="sfs__label">Total available for priority creditors</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-available-for-priority-debts">&#163;</td>
                        </tr>
                        <tr class="sfs__total last">
                            <td class="sfs__label">Total available for non-priority creditors</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-available-for-non-priority-debts">&#163;</td>
                        </tr>
                    </table>

                    <table class="sfs__table">
                        <tr>
                            <th class="sfs__label sfs__label--heading">Monthly Income</th>
                            <th class="sfs__label"></th>
                        </tr>
                        <tr>
                            <td class="sfs__text">Earnings</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-earnings">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Benefits and tax credits</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-benefits">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Pensions</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-pensions">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text no-border">Other income</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-other-income">&#163;</td>
                        </tr>
                        <tr class="sfs__total">
                            <td class="sfs__label">Total income</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-income">&#163;</td>
                        </tr>
                    </table>

                    <table class="sfs__table">
                        <tr>
                            <th class="sfs__label sfs__label--heading">Monthly Outgoings: Fixed Costs</th>
                            <th class="sfs__label"></th>
                        </tr>
                        <tr>
                            <td class="sfs__text">Rent</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="rent">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Mortgage</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="mortgage">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Other secured loans</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="secured-loans">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Council tax / rates</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="council-tax-rates">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Other home and contents</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-home-contents">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Gas</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="gas">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Electric</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="electricity">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Other utility costs (e.g. coal, oil, calor gas)</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-utilities">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Water</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-water">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Care and health costs</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-care-health">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Transport and travel</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-transport-travel">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">School costs</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-school">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Pensions and insurances</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-pensions-insurances">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Professional costs</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-professional">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text no-border">Other essential costs</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-other-essential">&#163;</td>
                        </tr>
                        <tr class="sfs__total">
                            <td class="sfs__label">Total fixed costs</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-fixed-costs">&#163;</td>
                        </tr>
                    </table>

                    <table class="sfs__table">
                        <tr>
                            <th class="sfs__label sfs__label--heading">Monthly Outgoings: Flexible Costs</th>
                            <th class="sfs__label"></th>
                        </tr>
                        <tr>
                            <td class="sfs__text">Communications and leisure</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-communications-leisure">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text">Food and housekeeping</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-food-housekeeping">&#163;</td>
                        </tr>
                        <tr>
                            <td class="sfs__text no-border">Personal costs</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-personal">&#163;</td>
                        </tr>
                        <tr class="sfs__total">
                            <td class="sfs__label">Total flexible costs</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-flexible-costs">&#163;</td>
                        </tr>
                    </table>


                    <table class="sfs__table sfs__table--spacing">
                        <tr class="sfs__total">
                            <td class="sfs__label">Total monthly outgoings (fixed and flexible)</td>
                            <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-outgoings">&#163;</td>
                        </tr>
                    </table>

                </div>
                <div class="sfs-col sfs-col--half">

                    <table class="sfs__table">
                            <tr class="sfs__label">
                                <td class="small-text">Please confirm you have considered (or <br />
                                    discussed with an adviser) the use of any<br />
                                    assets to make lump sum payments
                                </td>
                                <td class="small-text">&#160;Tick to<br />confirm ✔<br />
                                <!-- Add the class 'checked' to the field below -->
                                    <span class="sfs__whitebox" id="asset-use-considered"></span>
                                </td>
                            </tr>
                    </table>

                    <table class="sfs__table">
                        <div class="sfs__row">
                            <tr class="sfs__label">
                                <td class="small-text">Please confirm that a monthly contribution<br />
                                    to savings has been considered<br />
                                    (or discussed with an adviser)
                                </td>
                                <td class="small-text">&#160;Tick to<br />confirm ✔<br />
                                <!-- Add the class 'checked' to the field below -->
                                    <span class="sfs__whitebox" id="savings-contribution-considered"></span>
                                </td>
                            </tr>
                        </div>
                    </table>

                    <div class="sfs__row extra-padding--top">
                        <p class="sfs__label">Additional notes (e.g. reasons for debt, circumstances,<br />temporary situations)</p>
                    </div>

                    <!--  Each note should be wrapped in this HTML -->
                    <div class="sfs__row sfs__output sfs__note">
                        <p class="sfs__text sfs__output">e.g. Made redundant in June 2014 and was out of work
                        for 6 months</p>
                    </div>

                    <div class="sfs__row sfs__output sfs__note">
                        <p class="sfs__text sfs__output">e.g. Communications and leisure: Mobile phone –
                        client has multiple family members abroad</p>
                    </div>

                    <div class="sfs__note">
                    </div>

                    <div class="sfs__text-block sfs__text-block--short">
                        <p class="sfs__text">
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>


</xsl:stylesheet>