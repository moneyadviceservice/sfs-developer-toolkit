<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" indent="yes" />

    <!--
        Process Includes
    -->
    <!-- Include the helpers -->
    <xsl:include href="../helpers/checkboxes.xslt"/>
    <xsl:include href="../helpers/debts.xslt"/>
    <xsl:include href="../helpers/notes.xslt"/>

    <!-- Include the pages -->
    <xsl:include href="page-one.xslt"/>
    <xsl:include href="page-two.xslt"/>
    <xsl:include href="page-three.xslt"/>
    <xsl:include href="page-four.xslt"/>


    <!--
        Process Variables
    -->
    <!-- Define space available for displaying debts -->
    <xsl:variable name="priority-debts-on-page-2" select="42" />
    <xsl:variable name="non-priority-debts-on-page-2" select="43" />

    <!-- Define the number of debts in the current statement -->
    <xsl:variable name="total-priority-debts">
        <xsl:value-of select="count(/root/debts/priority-debts)" />
    </xsl:variable>
    <xsl:variable name="total-non-priority-debts">
        <xsl:value-of select="count(/root/debts/non-priority-debts)" />
    </xsl:variable>

    <!-- Deine whether or not page 3 is required for displaying further debts-->
    <xsl:variable name="page-3-required">
        <xsl:choose>
            <xsl:when test="$total-priority-debts &gt; $priority-debts-on-page-2 or $total-non-priority-debts &gt; $non-priority-debts-on-page-2">y</xsl:when>
            <xsl:otherwise>n</xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- Define the xPath to fetch everything we will consider a 'note' -->
    <xsl:variable name="notes-xpath" select="/root/client-employment-status-other|/root/notes" />

    <!-- Define the number of rows available for displaying notes on page one -->
    <xsl:variable name="available-rows-page-1" select="32" />

    <!-- Define the note row length on page one -->
    <xsl:variable name="note-row-length-page-1" select="50" />

    <!-- Define the number of notes -->
    <xsl:variable name="total-note-count">
        <xsl:value-of select="count($notes-xpath)" />
    </xsl:variable>

    <!-- Define how many rows will be used up outputting the notes on page one -->
    <xsl:variable name="rows-needed-for-all-notes">
        <xsl:call-template name="count-note-rows">
            <xsl:with-param name="index" select="1" />
            <xsl:with-param name="total-rows" select="0" />
        </xsl:call-template>
    </xsl:variable>

    <!-- Deine whether or not page 4 is required for displaying further notes-->
    <xsl:variable name="page-4-required">
        <xsl:choose>
            <xsl:when test="$rows-needed-for-all-notes &gt; $available-rows-page-1">y</xsl:when>
            <xsl:otherwise>n</xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!--
        If page 4 is required we need to know how many notes we're going to put
        on page one so we know where to start when we output the rest to page 4
     -->
    <xsl:variable name="page-1-note-count">
        <xsl:choose>
            <xsl:when test="$page-4-required = 'y'">
                <xsl:call-template name="count-page-1-notes">
                    <xsl:with-param name="index" select="1" />
                    <xsl:with-param name="available-rows" select="$available-rows-page-1" />
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$total-note-count" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- Define the loop end for page 4 (if needed) -->
    <xsl:variable name="page-4-note-count">
        <xsl:value-of select="$total-note-count" />
    </xsl:variable>


    <!--
        Render HTML
    -->
    <xsl:template name="sfs-summary" match="/root">
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

                    <!-- Degubbing information / uncomment if required -->
                    <!--
                    note-row-length-page-1: <xsl:value-of select="$note-row-length-page-1" /><br />
                    total-note-count: <xsl:value-of select="$total-note-count" /><br />
                    rows-needed-for-all-notes: <xsl:value-of select="$rows-needed-for-all-notes" /><br />
                    page-4-required: <xsl:value-of select="$page-4-required" /><br />
                    page-1-note-count: <xsl:value-of select="$page-1-note-count" /><br />
                    page-4-note-count: <xsl:value-of select="$page-4-note-count" /><br />
                    -->

                    <xsl:call-template name="page-one" />
                    <xsl:call-template name="page-two" />

                    <!-- If we have more debts than can fit on to page two include page three -->
                    <xsl:if test="$page-3-required = 'y'">
                        <xsl:call-template name="page-three" />
                    </xsl:if>

                    <!-- If we have more nores than can fit on page one include page four -->
                    <xsl:if test="$page-4-required = 'y'">
                        <xsl:call-template name="page-four" />
                    </xsl:if>
                </div>
            </div>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>