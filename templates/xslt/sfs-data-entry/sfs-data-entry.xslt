<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" indent="yes" />

    <!--
        Process Includes
    -->
    <!-- Include the helpers -->
    <xsl:include href="../helpers/checkboxes.xslt"/>
    <xsl:include href="../helpers/debts.xslt"/>
    <xsl:include href="../helpers/income-expenditure.xslt"/>

    <!-- Include the pages -->
    <xsl:include href="page-one.xslt"/>
    <xsl:include href="page-two.xslt"/>
    <xsl:include href="page-three.xslt"/>
    <xsl:include href="page-four.xslt"/>
    <xsl:include href="page-five.xslt"/>
    <xsl:include href="page-six.xslt"/>


    <!--
        Process Variables
    -->

    <!-- Define the number of debts in the current statement -->
    <xsl:variable name="count-of-priority-debts">
        <xsl:value-of select="count(/root/debts/priority-debts)" />
    </xsl:variable>
    <xsl:variable name="count-of-non-priority-debts">
        <xsl:value-of select="count(/root/debts/non-priority-debts)" />
    </xsl:variable>


    <!-- Income and expenditures -->

        <!-- Define the note row length for each row -->
        <xsl:variable name="note-row-length" select="55" />


    <!-- Other essential costs -->

        <!-- Define the xpath for other-essential-costs -->
        <xsl:variable name="other-essential-costs-xpath" select="root/monthly-outgoings/fixed-costs/other-essential/other-essential-costs" />

        <!-- Define the number of other-costs -->
        <xsl:variable name="other-essential-costs-count">
            <xsl:value-of select="count($other-essential-costs-xpath)" />
        </xsl:variable>

        <!-- Deine the total number of other-essetial-costs allowed on the page -->
        <xsl:variable name="maximum-other-essential-costs" select="6" />

        <!-- Deine whether or any essential costs need to be output on the additional notes page -->
        <xsl:variable name="display-other-essential-costs-on-page-six">
            <xsl:choose>
                <xsl:when test="$maximum-other-essential-costs &lt; $other-essential-costs-count">y</xsl:when>
                <xsl:otherwise>n</xsl:otherwise>
            </xsl:choose>
        </xsl:variable>


    <!--
        Render HTML
    -->
    <xsl:template name="sfs-data-entry" match="/root">
        <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text>
        <html lang="en-GB" class="no-js">
        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1" />
            <title>SFS Summary</title>
            <link rel="stylesheet" href="http://sfs-developer-toolkit.test/html/assets/css/sfs-form.css" />
        </head>
        <!--
            If rendering to screen use class 'screen' on body element
            If rendering as PDF use class 'a4' on body element
        -->
            <body class="screen">
                <div id="container">
                    <div class="sfs-form">
                        <xsl:call-template name="page-one" />
                        <xsl:call-template name="page-two" />
                        <xsl:call-template name="page-three" />
                        <xsl:call-template name="page-four" />
                        <xsl:call-template name="page-five" />
                        <xsl:call-template name="page-six" />
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>