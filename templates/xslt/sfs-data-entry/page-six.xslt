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

                    <!-- Display any notes from income and and expenditure which didnt fully fit in the initial note field -->
                    <xsl:call-template name="income-expenditure-additional-notes">
                    </xsl:call-template>

                    <!-- Display any other-essential-costs which didnt fully fit in the initial set of other costs rows -->
                    <xsl:call-template name="additional-other-essential-costs">
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