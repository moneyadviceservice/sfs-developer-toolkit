<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="page-six">
        <!-- Page 6 -->
        <div class="sfs-page page">
            <div class="sfs-form__section">
                <div class="sfs-col sfs-col--full">
                    <div class="sfs-col sfs-col--full">
                        <p class="sfs__label sfs__label--heading">Additional notes (e.g. reasons for debt, circumstances, temporary situations)</p>
                    </div>

                    <div class="sfs__row">
                        <p class="sfs__output sfs__text--italic">
                            <strong>e.g.</strong> Made redundant in June 2014 and was out of work for 6 months</p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__output sfs__text--italic">
                            <strong>e.g. Communications and leisure:</strong> mobile phone – client has multiple family members abroad</p>
                    </div>

                    <xsl:call-template name="income-expenditure-additional-notes">
                    </xsl:call-template>
                    <div class="sfs__note">
                    </div>



                    <div class="sfs__signature-box">
                        <p>This financial statement is an accurate record of the information provided.</p>
                        <p class="sfs__label sfs__sign">Signed:</p>
                        <p class="sfs__label sfs__date">Date:</p>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>

</xsl:stylesheet>