<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<!-- Data entry template note helpers -->

    <!--
    @TODO: Comment
    -->
    <xsl:template name="write-finance-note">
        <xsl:param name="note" />
        <xsl:variable name="continued-text"> (continued...)
        </xsl:variable>
        <xsl:if test="$note != ''">
        <xsl:choose>
            <xsl:when test="string-length($note) &lt;= $note-row-length">
                <xsl:value-of select="$note" />
            </xsl:when>
            <xsl:otherwise>
            <!-- Get truncated $note -->
            <xsl:value-of select="concat(substring($note, 1, 40), $continued-text)" />
            </xsl:otherwise>
        </xsl:choose>
        </xsl:if>



    </xsl:template>

    <!-- <xsl:template name"write-additional-notes">
    </xsl:template> -->

</xsl:stylesheet>