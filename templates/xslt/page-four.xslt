<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="page-four">
        <xsl:param name="notes-row-index" />
                <!-- Page 4 -->
                <div class="sfs-page page">
                    <div class="sfs-form__section">
                        <div class="sfs-col sfs-col--full">
                            <div class="sfs__row sfs__row--special-padding-2">
                                <p class="sfs__label">Additional notes (e.g. reasons for debt, circumstances, temporary situations)</p>
                            </div>
                            <xsl:call-template name="additional-notes">
                                <xsl:with-param name="notesSelector" select="client-employment-status-other|partner-employment-status-other|housing-tenure-other|notes"></xsl:with-param>
                                <xsl:with-param name="index" select="$notes-row-index" />
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