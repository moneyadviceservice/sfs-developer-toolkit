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
                    <tr>
                        <td class="sfs__text">Childcare costs</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="childcare-costs"><xsl:value-of select="monthly-outgoings/fixed-costs/care-health/childcare-costs/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Adult-care costs</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="adult-care-costs"><xsl:value-of select="monthly-outgoings/fixed-costs/care-health/adult-care-costs/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Child maintenance or child support</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="child-maintenance-child-support"><xsl:value-of select="monthly-outgoings/fixed-costs/care-health/child-maintenance-child-support/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Prescriptions and medicines</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="prescriptions-medicines"><xsl:value-of select="monthly-outgoings/fixed-costs/care-health/prescriptions-medicines/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Dentistry and opticians</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="dentistry-opticians"><xsl:value-of select="monthly-outgoings/fixed-costs/care-health/dentistry-opticians/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Other costs</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-care-health"><xsl:value-of select="monthly-outgoings/fixed-costs/care-health/other-care-health/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
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
                    <tr>
                        <td class="sfs__text">Public transport (e.g. work, school, shopping)</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="public-transport"><xsl:value-of select="monthly-outgoings/fixed-costs/transport-travel/public-transport/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Hire Purchase or conditional sale vehicle</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="hire-purchase-conditional-sale-vehicle"><xsl:value-of select="monthly-outgoings/fixed-costs/transport-travel/hire-purchase-conditional-sale-vehicle/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Car insurance</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="car-insurance"><xsl:value-of select="monthly-outgoings/fixed-costs/transport-travel/car-insurance/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Road tax</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="road-tax"><xsl:value-of select="monthly-outgoings/fixed-costs/transport-travel/road-tax/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">MOT and ongoing maintenance</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="mot-ongoing-maintenance"><xsl:value-of select="monthly-outgoings/fixed-costs/transport-travel/mot-ongoing-maintenance/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Breakdown cover</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="breakdown-cover"><xsl:value-of select="monthly-outgoings/fixed-costs/transport-travel/breakdown-cover/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Fuel, parking and toll road charges</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="fuel-parking-toll-road-charges"><xsl:value-of select="monthly-outgoings/fixed-costs/transport-travel/fuel-parking-toll-road-charges/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Other costs (including taxis)</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-transport-travel"><xsl:value-of select="monthly-outgoings/fixed-costs/transport-travel/other-transport-travel/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
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
                    <tr>
                        <td class="sfs__text">School uniform</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="school-uniform"><xsl:value-of select="monthly-outgoings/fixed-costs/school/school-uniform/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">After-school clubs and school trips</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="after-school-clubs-school-trips"><xsl:value-of select="monthly-outgoings/fixed-costs/school/after-school-clubs-school-trips/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Other costs</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-school"><xsl:value-of select="monthly-outgoings/fixed-costs/school/other-school/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
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
                    <tr>
                        <td class="sfs__text">Pension payments</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="pension-payments"><xsl:value-of select="monthly-outgoings/fixed-costs/pensions-insurances/pension-payments/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Life insurance</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="life-insurance"><xsl:value-of select="monthly-outgoings/fixed-costs/pensions-insurances/life-insurance/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Mortgage payment protection insurance</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="mortgage-payment-protection-insurance"><xsl:value-of select="monthly-outgoings/fixed-costs/pensions-insurances/mortgage-payment-protection-insurance/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Buildings and contents insurance</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="buildings-contents-insurance"><xsl:value-of select="monthly-outgoings/fixed-costs/pensions-insurances/buildings-contents-insurance/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Health insurance (medical or accident or dental)</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="health-insurance"><xsl:value-of select="monthly-outgoings/fixed-costs/pensions-insurances/health-insurance/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Other</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-pensions-insurances"><xsl:value-of select="monthly-outgoings/fixed-costs/pensions-insurances/other-pensions-insurances/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
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
                    <tr>
                        <td class="sfs__text">Professional courses</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="professional-courses"><xsl:value-of select="monthly-outgoings/fixed-costs/professional/professional-courses/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Union fees</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="union-fees"><xsl:value-of select="monthly-outgoings/fixed-costs/professional/union-fees/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Professional fees</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="professional-fees"><xsl:value-of select="monthly-outgoings/fixed-costs/professional/professional-fees/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Other</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-professional"><xsl:value-of select="monthly-outgoings/fixed-costs/professional/other-professional/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
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
                    <tr>
                        <td class="sfs__text">Other essential costs</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-essential-costs"><xsl:value-of select="monthly-outgoings/fixed-costs/other-essential/other-essential-costs/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text"></td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box"></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text"></td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box"></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text"></td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box"></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr class="sfs__total last">
                        <td class="sfs__label">Total other essential costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-other-essential"><xsl:value-of select="monthly-outgoings/fixed-costs/other-essential/total-other-essential" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

    </xsl:template>

</xsl:stylesheet>