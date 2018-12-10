<?php

// Load the XML source
$xml = new DOMDocument;
$xml->load('dds/v1.1/xsd/sfs-data-entry-example-data.xml');

$xsl = new DOMDocument;
$xsl->load('templates/xslt/sfs-data-entry/sfs-data-entry.xslt');

// Configure the transformer
$proc = new XSLTProcessor;
$proc->importStyleSheet($xsl); // attach the xsl rules

echo $proc->transformToXML($xml);

?>