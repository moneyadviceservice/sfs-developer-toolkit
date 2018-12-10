<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="page-four">

        <!-- Page 4 -->
        <div class="sfs-page page">
            <div class="sfs-form__section">
                <div class="sfs-col sfs-col--full">
                    <div class="sfs__row sfs__row--special-padding-2">
                        <p class="sfs__label">Additional notes (e.g. reasons for debt, circumstances, temporary situations)</p>
                    </div>

                    <!-- Note: Comment this -->
                    <xsl:call-template name="write-notes">
                        <xsl:with-param name="index" select="$page-1-note-count + 1" />
                        <xsl:with-param name="end" select="$page-4-note-count" />
                    </xsl:call-template>

                    <div class="sfs__text-block sfs__text-block--full-page">
                        <p class="sfs__text"></p>
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