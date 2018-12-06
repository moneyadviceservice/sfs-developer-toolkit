<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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
            <xsl:if test="$field-value = $if-value">
                <xsl:attribute name="class">sfs__checkbox checked</xsl:attribute>
            </xsl:if>
            <xsl:attribute name="id">
                <xsl:value-of select='$field-id' />
            </xsl:attribute>
            <xsl:value-of select='$field-label' />
        </p>
    </xsl:template>

</xsl:stylesheet>