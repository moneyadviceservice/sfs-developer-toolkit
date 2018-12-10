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
                    <tr>
                        <td class="sfs__text">Home phone, internet, TV package (including film subscriptions)</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="home-phone-internet-tv"><xsl:value-of select="monthly-outgoings/flexible-costs/communications-leisure/home-phone-internet-tv/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Mobile phone</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="mobile-phone"><xsl:value-of select="monthly-outgoings/flexible-costs/communications-leisure/mobile-phone/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Hobbies, leisure or sport (e.g. socialising, eating out, outings, clubs, leisure courses)</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="hobbies-leisure-sport"><xsl:value-of select="monthly-outgoings/flexible-costs/communications-leisure/hobbies-leisure-sport/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Gifts (e.g. birthdays, festivals, charity donations)</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="gifts"><xsl:value-of select="monthly-outgoings/flexible-costs/communications-leisure/gifts/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Pocket money</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="pocket-money"><xsl:value-of select="monthly-outgoings/flexible-costs/communications-leisure/pocket-money/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Newspapers, magazines, stationery and postage</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="newspapers-magazines-stationery-postage"><xsl:value-of select="monthly-outgoings/flexible-costs/communications-leisure/newspapers-magazines-stationery-postage/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Other costs</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-communications-leisure"><xsl:value-of select="monthly-outgoings/flexible-costs/communications-leisure/other-communications-leisure/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr class="sfs__total">
                        <td class="sfs__label">Total communications and leisure costs per month</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="total-communications-leisure"><xsl:value-of select="monthly-outgoings/flexible-costs/communications-leisure/total-communications-leisure" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
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
                    <tr>
                        <td class="sfs__text">Groceries (e.g. food, pet food, non-alcoholic drinks, cleaning)</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="groceries"><xsl:value-of select="monthly-outgoings/flexible-costs/food-housekeeping/groceries/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Nappies and baby items</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="nappies-baby-items"><xsl:value-of select="monthly-outgoings/flexible-costs/food-housekeeping/nappies-baby-items/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">School meals and meals at work</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="school-work-meals"><xsl:value-of select="monthly-outgoings/flexible-costs/food-housekeeping/school-work-meals/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Laundry and dry cleaning</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="laundry-dry-cleaning"><xsl:value-of select="monthly-outgoings/flexible-costs/food-housekeeping/laundry-dry-cleaning/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Alcohol</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="alcohol"><xsl:value-of select="monthly-outgoings/flexible-costs/food-housekeeping/alcohol/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Smoking products</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="smoking-products"><xsl:value-of select="monthly-outgoings/flexible-costs/food-housekeeping/smoking-products/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Vet bills &amp; pet insurance</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="vet-bills-pet-insurance"><xsl:value-of select="monthly-outgoings/flexible-costs/food-housekeeping/vet-bills-pet-insurance/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">House repairs and maintenance</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="house-repairs-maintenance"><xsl:value-of select="monthly-outgoings/flexible-costs/food-housekeeping/house-repairs-maintenance/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Other costs</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-food-housekeeping"><xsl:value-of select="monthly-outgoings/flexible-costs/food-housekeeping/other-food-housekeeping/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
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
                    <tr>
                        <td class="sfs__text">Clothing and footwear</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="clothing-footwear"><xsl:value-of select="monthly-outgoings/flexible-costs/personal/clothing-footwear/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Hairdressing</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="hairdressing"><xsl:value-of select="monthly-outgoings/flexible-costs/personal/hairdressing/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Toiletries</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="toiletries"><xsl:value-of select="monthly-outgoings/flexible-costs/personal/toiletries/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                    <tr>
                        <td class="sfs__text">Other costs</td>
                        <td class="sfs__table-highlight sfs__output sfs__number_box" id="other-personal"><xsl:value-of select="monthly-outgoings/flexible-costs/personal/other-personal/monthly-amount" /></td>
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
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
                        <td class="sfs__table-notes sfs__text sfs__output"></td>
                    </tr>
                </table>
            </div>
        </div>

    </div>

    </xsl:template>

</xsl:stylesheet>