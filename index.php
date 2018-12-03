<?php

// Load the XML source
$xml = new DOMDocument;
$xml->load('dds/v1.1/xsd/sfs-summary-example-data.xml');

$xsl = new DOMDocument;
$xsl->load('templates/xslt/sfs-summary-template.xslt');

// Configure the transformer
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // attach the xsl rules

echo $proc->transformToXML($xml);

?>