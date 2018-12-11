<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="page-three">

    <!-- Page 3 -->
    <div class="sfs-page page">
        <div class="sfs-form__section">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th colspan="3" class="sfs__label sfs__label--heading">
                            <strong>Monthly Outgoings: Fixed Costs</strong>
                            <span class="sfs__text--italic"> (continued)</span>
                        </th>
                    </tr>
                    <tr>
                        <th class="sfs__label sfs__label--heading">Care and health costs</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">childcare-costs</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Childcare costs</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/care-health/childcare-costs" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">adult-care-costs</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Adult-care costs</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/care-health/adult-care-costs" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">child-maintenance-child-support</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Child maintenance or child support</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/care-health/child-maintenance-child-support" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">prescriptions-medicines</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Prescriptions and medicines</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/care-health/prescriptions-medicines" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">dentistry-opticians</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Dentistry and opticians</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/care-health/dentistry-opticians" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">other-care-health</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Other costs</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/care-health/other-care-health" />
                    </xsl:call-template>

                    <tr class="sfs__total last">
                        <td class="sfs__label">Total care and health costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-care-health"><xsl:value-of select="monthly-outgoings/fixed-costs/care-health/total-care-health" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th class="sfs__label sfs__label--heading">Transport and travel</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">public-transport</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Public transport (e.g. work, school, shopping)</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/transport-travel/public-transport" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">hire-purchase-conditional-sale-vehicle</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Hire Purchase or conditional sale vehicle</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/transport-travel/hire-purchase-conditional-sale-vehicle" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">car-insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Car insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/transport-travel/car-insurance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">road-tax</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Road tax</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/transport-travel/road-tax" />
                    </xsl:call-template>

                     <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">mot-ongoing-maintenance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">MOT and ongoing maintenance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/transport-travel/mot-ongoing-maintenance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">breakdown-cover</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Breakdown cover</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/transport-travel/breakdown-cover" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">fuel-parking-toll-road-charges</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Fuel, parking and toll road charges</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/transport-travel/fuel-parking-toll-road-charges" />
                    </xsl:call-template>

                     <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">other-transport-travel</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Other costs (including taxis)</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/transport-travel/other-transport-travel" />
                    </xsl:call-template>

                    <tr class="sfs__total last">
                        <td class="sfs__label">Total transport and travel costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-transport-travel"><xsl:value-of select="monthly-outgoings/fixed-costs/transport-travel/total-transport-travel" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th class="sfs__label sfs__label--heading">School costs</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>


                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">school-uniform</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">School uniform</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/school/school-uniform" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">after-school-clubs-school-trips</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">After-school clubs and school trips</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/school/after-school-clubs-school-trips" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">other-school</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Other costs</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/school/other-school" />
                    </xsl:call-template>

                    <tr class="sfs__total last">
                        <td class="sfs__label">Total school costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-school"><xsl:value-of select="monthly-outgoings/fixed-costs/school/total-school" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th class="sfs__label sfs__label--heading">Pensions and insurances</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>

                     <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">pension-payments</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Pension payments</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/pensions-insurances/pension-payments" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">life-insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Life insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/pensions-insurances/life-insurance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">mortgage-payment-protection-insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Mortgage payment protection insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/pensions-insurances/mortgage-payment-protection-insurance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">buildings-contents-insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Buildings and contents insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/pensions-insurances/buildings-contents-insurance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">health-insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Health insurance (medical or accident or dental)</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/pensions-insurances/buildings-contents-insurance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">other-pensions-insurances</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Other</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/pensions-insurances/other-pensions-insurances" />
                    </xsl:call-template>

                    <tr class="sfs__total last">
                        <td class="sfs__label">Total pensions and insurance costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-pensions-insurances"><xsl:value-of select="monthly-outgoings/fixed-costs/pensions-insurances/total-pensions-insurances" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th class="sfs__label sfs__label--heading">Professional costs</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">professional-courses</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Professional courses</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/professional/professional-courses" />
                    </xsl:call-template>


                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">union-fees</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Union fees</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/professional/union-fees" />
                    </xsl:call-template>


                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">professional-fees</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Professional fees</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/professional/professional-fees" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">other-professional</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Other</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/fixed-costs/professional/other-professional" />
                    </xsl:call-template>

                    <tr class="sfs__total last">
                        <td class="sfs__label">Total professional costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-professional"><xsl:value-of select="monthly-outgoings/fixed-costs/professional/total-professional" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th class="sfs__label sfs__label--heading">Other essential costs</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>

                    <!-- TODO add all other essential costs here -->
                    <xsl:for-each select="$other-essential-costs-xpath[position()&lt;=$maximum-other-essential-costs]">
                        <xsl:call-template name="income-expenditure-row">
                            <xsl:with-param name="income-expenditure-id">other-essential-costs</xsl:with-param>
                            <xsl:with-param name="income-expenditure-title"></xsl:with-param>
                            <xsl:with-param name="income-expenditure-selector" select="." />
                        </xsl:call-template>
                    </xsl:for-each>

                    <tr class="sfs__total last">
                        <td class="sfs__label">Total other essential costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-other-essential"><xsl:value-of select="monthly-outgoings/fixed-costs/other-essential/total-other-essential" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <xsl:if test="$display-other-essential-costs-on-page-six = 'y'">
                            <td></td>
                            <td></td>
                            <td class="sfs__text--italic sfs__text--right sfs__text--right-pad">Other essential costs are continued on page 6</td>
                        </xsl:if>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    </xsl:template>

</xsl:stylesheet>