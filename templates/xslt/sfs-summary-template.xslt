<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template name="sfs-summary" match="/">
    <!-- <xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;</xsl:text> -->
    <html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>SFS Summary</title>
        <link rel="stylesheet" href="http://sfs-developer-toolkit.test/html/assets/css/sfs-form.css" />
    </head>
    <!--
        If rendering to screen use class 'screen'
        If rendering as PDF use class 'a4'
    -->
    <body class="screen">
        <div id="container">
            <div class="sfs-form">

                <xsl:call-template name="page-one" />

            </div>
        </div>
    </body>
     </html>
    </xsl:template>


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


    <xsl:template name="page-one">
        <!--  Page 1 -->
        <div class="sfs-page page">
            <div class="sfs-form__section sfs-form__section--underline">
                <div class="sfs-col sfs-col--half">
                    <div class="sfs__row sfs__row--special-padding sfs__row no-border"></div>
                    <div class="sfs__row sfs__row--special-padding">
                        <p class="sfs__label">Name:</p>
                        <p class="sfs__text sfs__output" id="client-name"><xsl:value-of select="root/client-name" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">D.O.B.:</p>
                        <p class="sfs__text sfs__output" id="client-date-of-birth"><xsl:value-of select="root/client-date-of-birth" /></p>
                    </div>
                    <!-- Add the class 'checked' to applicable option below -->
                    <div class="sfs__row">
                        <p class="sfs__label">Application:</p>

                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">is-joint-application__yes</xsl:with-param>
                            <xsl:with-param name="field-label">Single</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/is-joint-application" />
                            <xsl:with-param name="if-value">false</xsl:with-param>
                        </xsl:call-template>

                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">is-joint-application__no</xsl:with-param>
                            <xsl:with-param name="field-label">Joint</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/is-joint-application" />
                            <xsl:with-param name="if-value">true</xsl:with-param>
                        </xsl:call-template>

                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Partner:</p>
                        <p class="sfs__text">(if applicable):</p>
                        <p class="sfs__text sfs__output" id="partner-name"><xsl:value-of select="root/partner-name" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Partner D.O.B.:</p>
                        <p class="sfs__text">(if applicable):</p>
                        <p class="sfs__text sfs__output" id="partner-date-of-birth"><xsl:value-of select="root/partner-date-of-birth" /></p>
                    </div>
                    <div class="sfs__row sfs__row--address">
                        <p class="sfs__label">Address:</p>
                        <p class="sfs__text sfs__output" id="client-address"><xsl:value-of select="root/client-address" /></p>
                    </div>
                    <div class="sfs__row sfs__row--dependents">
                        <p class="sfs__label">Dependent children:</p>
                        <p class="sfs__text">Under 16:</p>
                        <p class="sfs__text sfs__output" id="dependent-children-under-16"><xsl:value-of select="root/dependent-children-under-16" /></p>
                        <p class="sfs__text">16-18:</p>
                        <p class="sfs__text sfs__output" id="dependent-children-16-18"><xsl:value-of select="root/dependent-children-16-18" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Other dependants:</p>
                        <p class="sfs__text sfs__output" id="other-dependents"><xsl:value-of select="root/other-dependents" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Number in household:</p>
                        <p class="sfs__text sfs__output" id="total-number-in-household"><xsl:value-of select="root/total-number-in-household" /></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Number of vehicles in household:</p>
                        <p class="sfs__text sfs__output" id="vehicles"><xsl:value-of select="root/vehicles" /></p>
                    </div>
                    <!-- Add the class 'checked' to all applicable options -->
                        <div class="sfs__row no-border">
                            <p class="sfs__label">Housing tenure:</p>
                        </div>
                        <div class="sfs__row">
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__owner</xsl:with-param>
                            <xsl:with-param name="field-label">Owner</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/housing-tenure" />
                            <xsl:with-param name="if-value">Owner</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__mortgage</xsl:with-param>
                            <xsl:with-param name="field-label">Mortgage</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/housing-tenure" />
                            <xsl:with-param name="if-value">Mortgage</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__private-tenant</xsl:with-param>
                            <xsl:with-param name="field-label">Tenant – private</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/housing-tenure" />
                            <xsl:with-param name="if-value">Tenant – private</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__social-tenant</xsl:with-param>
                            <xsl:with-param name="field-label">Tenant – social</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/housing-tenure" />
                            <xsl:with-param name="if-value">Tenant – social</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__living-with-parents</xsl:with-param>
                            <xsl:with-param name="field-label">Living with parents</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/housing-tenure" />
                            <xsl:with-param name="if-value">Living with parents</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">housing-tenure__other</xsl:with-param>
                            <xsl:with-param name="field-label">Other</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/housing-tenure" />
                            <xsl:with-param name="if-value">Other</xsl:with-param>
                        </xsl:call-template>
                        </div>
                </div>
                <div class="sfs-col sfs-col--half">
                    <div class="sfs__logo-wrap">
                        <img class="sfs__logo" src="http://sfs-developer-toolkit.test/html/assets/images/sfs-logo.png" />
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Contact/team name:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Agency:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row sfs__row--address">
                        <p class="sfs__label">Agency address:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Membership code number:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Case reference number:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Date of statement:</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>
                    <div class="sfs__row">
                        <p class="sfs__label">Date of review:</p>
                        <p class="sfs__text">(if applicable):</p>
                        <p class="sfs__text sfs__output"></p>
                    </div>

                    <!-- Add the class 'checked to all applicable options' -->
                    <div class="sfs__row">
                        <p class="sfs__label">Employment:</p>

                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__full-time</xsl:with-param>
                            <xsl:with-param name="field-label">Full-time</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Full-time</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__part-time</xsl:with-param>
                            <xsl:with-param name="field-label">Part-time</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Part-time</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__unemployed</xsl:with-param>
                            <xsl:with-param name="field-label">Unemployed</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Unemployed</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__not-working-due-to-illness</xsl:with-param>
                            <xsl:with-param name="field-label">Not working due to illness / disability</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Not working due to illness / disability</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__self-employed</xsl:with-param>
                            <xsl:with-param name="field-label">Self-employed</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Self-employed</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__retired</xsl:with-param>
                            <xsl:with-param name="field-label">Retired</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Retired</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__Carer</xsl:with-param>
                            <xsl:with-param name="field-label">Carer</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Carer</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__student</xsl:with-param>
                            <xsl:with-param name="field-label">Student</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Student</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">client-employment-status__other</xsl:with-param>
                            <xsl:with-param name="field-label">Other</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Other</xsl:with-param>
                        </xsl:call-template>
                    </div>
                    <!-- Add the class 'checked to all applicable options' -->
                    <div class="sfs__row">
                        <p class="sfs__label">Partner's employment:</p>
                                                <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__full-time</xsl:with-param>
                            <xsl:with-param name="field-label">Full-time</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Full-time</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__part-time</xsl:with-param>
                            <xsl:with-param name="field-label">Part-time</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Part-time</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__unemployed</xsl:with-param>
                            <xsl:with-param name="field-label">Unemployed</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/client-employment-status" />
                            <xsl:with-param name="if-value">Unemployed</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__not-working-due-to-illness</xsl:with-param>
                            <xsl:with-param name="field-label">Not working due to illness / disability</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/partner-employment-status" />
                            <xsl:with-param name="if-value">Not working due to illness / disability</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__self-employed</xsl:with-param>
                            <xsl:with-param name="field-label">Self-employed</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/partner-employment-status" />
                            <xsl:with-param name="if-value">Self-employed</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__retired</xsl:with-param>
                            <xsl:with-param name="field-label">Retired</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/partner-employment-status" />
                            <xsl:with-param name="if-value">Retired</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__Carer</xsl:with-param>
                            <xsl:with-param name="field-label">Carer</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/partner-employment-status" />
                            <xsl:with-param name="if-value">Carer</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__student</xsl:with-param>
                            <xsl:with-param name="field-label">Student</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/partner-employment-status" />
                            <xsl:with-param name="if-value">Student</xsl:with-param>
                        </xsl:call-template>
                        <xsl:call-template name="check-box">
                            <xsl:with-param name="field-id">partner-employment-status__other</xsl:with-param>
                            <xsl:with-param name="field-label">Other</xsl:with-param>
                            <xsl:with-param name="field-value" select="root/partner-employment-status" />
                            <xsl:with-param name="if-value">Other</xsl:with-param>
                        </xsl:call-template>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>


</xsl:stylesheet>