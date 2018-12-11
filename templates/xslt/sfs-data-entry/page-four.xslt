<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="page-four">

    <!-- Page 4 -->
    <div class="sfs-page page">
        <div class="sfs-form__section">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th colspan="3" class="sfs__label sfs__label--heading">
                            <strong>Monthly Outgoings: Flexible Costs</strong>
                        </th>
                    </tr>
                    <tr>
                        <th class="sfs__label sfs__label--heading">Communications and leisure</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">home-phone-internet-tv</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Home phone, internet, TV package (including film subscriptions)</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/communications-leisure/home-phone-internet-tv" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">mobile-phone</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Mobile phone</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/communications-leisure/mobile-phone" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">hobbies-leisure-sport</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Hobbies, leisure or sport (e.g. socialising, eating out, outings, clubs, leisure courses)</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/communications-leisure/hobbies-leisure-sport" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">gifts</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Gifts (e.g. birthdays, festivals, charity donations)</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/communications-leisure/gifts" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">pocket-money</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Pocket money</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/communications-leisure/pocket-money" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">newspapers-magazines-stationery-postage</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Newspapers, magazines, stationery and postage</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/communications-leisure/newspapers-magazines-stationery-postage" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">other-communications-leisure</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Other costs</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/communications-leisure/other-communications-leisure" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">total-communications-leisure</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Total communications and leisure costs per month</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/communications-leisure/total-communications-leisure" />
                    </xsl:call-template>

                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th class="sfs__label sfs__label--heading">Food and housekeeping</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">groceries</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Groceries (e.g. food, pet food, non-alcoholic drinks, cleaning)</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/food-housekeeping/groceries" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">nappies-baby-items</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Nappies and baby items</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/food-housekeeping/nappies-baby-items" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">school-work-meals</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">School meals and meals at work</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/food-housekeeping/school-work-meals" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">laundry-dry-cleaning</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Laundry and dry cleaning</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/food-housekeeping/laundry-dry-cleaning" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">alcohol</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Alcohol</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/food-housekeeping/alcohol" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">smoking-products</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Smoking products</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/food-housekeeping/smoking-products" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">vet-bills-pet-insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Vet bills &amp; pet insurance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/food-housekeeping/vet-bills-pet-insurance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">house-repairs-maintenance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">House repairs and maintenance</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/food-housekeeping/house-repairs-maintenance" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">other-food-housekeeping</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Other costs</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/food-housekeeping/other-food-housekeeping" />
                    </xsl:call-template>

                    <tr class="sfs__total last">
                        <td class="sfs__label">Total food and housekeeping costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-food-housekeeping"><xsl:value-of select="monthly-outgoings/flexible-costs/food-housekeeping/total-food-housekeeping" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th class="sfs__label sfs__label--heading">Personal costs</th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">clothing-footwear</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Clothing and footwear</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/personal/clothing-footwear" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">hairdressing</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Hairdressing</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/personal/hairdressing" />
                    </xsl:call-template>

                    <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">toiletries</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Toiletries</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/personal/toiletries" />
                    </xsl:call-template>

                     <xsl:call-template name="income-expenditure-row">
                        <xsl:with-param name="income-expenditure-id">other-personal</xsl:with-param>
                        <xsl:with-param name="income-expenditure-title">Other costs</xsl:with-param>
                        <xsl:with-param name="income-expenditure-selector" select="monthly-outgoings/flexible-costs/personal/other-personal" />
                    </xsl:call-template>

                    <tr class="sfs__total last">
                        <td class="sfs__label">Total personal costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-personal"><xsl:value-of select="monthly-outgoings/flexible-costs/personal/total-personal" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--half">
                <table class="sfs__table">
                    <tr>
                        <th colspan="3" class="sfs__label sfs__label--heading">
                            <strong>Total Monthly Outgoings: (fixed and flexible)</strong>
                        </th>
                    </tr>
                    <tr>
                        <td class="sfs__text"></td>
                        <td class="sfs__label sfs__output">Amount(£)</td>
                    </tr>
                    <tr class="sfs__total">
                        <td class="sfs__label">Total costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-monthly-outgoings-1"><xsl:value-of select="monthly-outgoings/total-monthly-outgoings" /></td>
                    </tr>
                </table>
            </div>
        </div>
        <!--  NEEDS AN UNDERLINE  -->
        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--half">
                <table class="sfs__table">
                    <tr>
                        <th colspan="3" class="sfs__label sfs__label--heading">
                            <strong>Savings</strong>
                        </th>
                    </tr>
                    <tr>
                        <td class="sfs__text"></td>
                        <td class="sfs__label sfs__output">Amount(£)</td>
                    </tr>
                    <tr class="sfs__total">
                        <td class="sfs__text"></td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="savings-contribution"><xsl:value-of select="savings/savings-contribution" /></td>
                    </tr>

                    <!-- Add the class 'checked' to the field below -->
                    <tr class="sfs__label">
                        <td>
                            <xsl:text disable-output-escaping="yes">Please confirm that a monthly contribution &lt;br/&gt;
                                to savings has been considered &lt;br/&gt;(or discussed with an adviser)
                            </xsl:text>
                        </td>
                        <!-- Add the class 'checked' to the field below -->
                        <td>
                            <xsl:text disable-output-escaping="yes">
                                Tick to confirm ✔&lt;br/&gt;
                            </xsl:text>
                            <span class="sfs__whitebox" id="savings-contribution-considered">
                                <xsl:if test="savings/savings-contribution-considered">
                                    <xsl:attribute name="class">sfs__whitebox checked</xsl:attribute>
                                </xsl:if>
                            </span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="sfs-form__section sfs-form__section--data-entry">
            <div class="sfs-col sfs-col--full">
                <table class="sfs__table">
                    <tr>
                        <th colspan="3" class="sfs__label sfs__label--heading">
                            <strong>Debt Admin Fee (if applicable)</strong>
                        </th>
                    </tr>
                    <tr>
                        <th class="sfs__label sfs__label--heading">
                            </th>
                            <th class="sfs__label">Amount(£)</th>
                            <th class="sfs__label sfs__label--heading">Notes</th>
                    </tr>
                    <tr class="sfs__total">
                        <td class="sfs__label">Total fee per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="debt-admin-fee"><xsl:value-of select="debts/debt-admin-fee/monthly-amount" /></td>
                        <!-- TODO debt admin fee notes -->
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                </table>
            </div>
        </div>

    </div>

    </xsl:template>

</xsl:stylesheet>