<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <!-- Summary template note helpers -->
    <!--
    @TODO: Comment
    -->
    <xsl:template name="count-note-rows">
        <xsl:param name="index" />
        <xsl:param name="total-rows" />

        <!-- Get the note -->
        <xsl:variable name="note" select="($notes-xpath)[number($index)]" />

        <!-- get string length -->
        <xsl:variable name="note-rows" select="ceiling(string-length($note) div $note-row-length-page-1)" />

        <!-- Debugging -->
        <!-- <xsl:value-of select="$note-rows" />:<xsl:value-of select="$total-rows" />| -->

        <!-- Calculate the running total -->
        <xsl:variable name="running-total" select="$total-rows + $note-rows" />

        <xsl:choose>
            <xsl:when test="not($index = $total-note-count)">
                <xsl:call-template name="count-note-rows">
                    <xsl:with-param name="index" select="$index + 1" />
                    <xsl:with-param name="total-rows" select="$running-total" />
                </xsl:call-template>
            </xsl:when>

            <!-- No more nodes - outout the total -->
            <xsl:otherwise>
                <xsl:value-of select="$running-total" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <!--
    @TODO: Comment
    -->
    <xsl:template name="count-page-1-notes">
        <xsl:param name="index" />
        <xsl:param name="available-rows" />

        <!-- Get the note -->
        <xsl:variable name="note" select="($notes-xpath)[number($index)]" />

        <!-- get string length -->
        <xsl:variable name="note-rows" select="ceiling(string-length($note) div $note-row-length-page-1)" />

        <!-- Check for sufficient space for this note -->
        <xsl:choose>
            <!-- Yes, there is space for this note -->
            <xsl:when test="($available-rows - $note-rows) &gt; 0 ">
                <xsl:if test="not($index = $total-note-count)">
                    <xsl:call-template name="count-page-1-notes">
                        <xsl:with-param name="index" select="$index + 1" />
                        <xsl:with-param name="available-rows" select="$available-rows - $note-rows" />
                    </xsl:call-template>
                </xsl:if>
            </xsl:when>

            <!-- Nope, no more room -->
            <xsl:otherwise>
                <xsl:value-of select="$index"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>


    <!--
    @TODO: Comment
    -->
    <xsl:template name="write-notes">
        <xsl:param name="index" />
        <xsl:param name="end" />

        <!-- Get the note -->
        <xsl:variable name="note" select="($notes-xpath)[number($index)]" />

        <!-- Ignore empty nodes -->
        <xsl:if test="$note != ''">
            <div class="sfs__row sfs__output sfs__note">
                <p class="sfs__text sfs__output">
                <xsl:choose>
                    <xsl:when test="$note[local-name()= 'client-employment-status-other']">
                        Employment other:
                    </xsl:when>
                    <xsl:when test="$note[local-name()= 'partner-employment-status-other']">
                        Partner's employment other:
                    </xsl:when>
                    <xsl:when test="$note[local-name()= 'housing-tenure-other']">
                        Housing tenure other:
                    </xsl:when>
                </xsl:choose>
                <xsl:value-of select="$note"/></p>
            </div>
        </xsl:if>

        <!-- If we haven't reached the end yet, call the template again -->
        <xsl:if test="not($index &gt; $end)">
            <xsl:call-template name="write-notes">
                <xsl:with-param name="index" select="$index + 1" />
                <xsl:with-param name="end" select="$end" />
            </xsl:call-template>
        </xsl:if>
    </xsl:template>



</xsl:stylesheet>