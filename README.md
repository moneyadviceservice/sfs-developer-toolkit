# Standard Financial Statement: Data Definition Specification / Form generation templates

The Standard Financial Statement (SFS) is a landmark development for debt advice in the UK which delivers, for the first time, a universal income and expenditure statement, together with a single set of spending guidelines. For more information please visit: [sfs.moneyadviceservice.org.uk](https://sfs.moneyadviceservice.org.uk/en/what-is-the-standard-financial-statement)

This is the repository for working draft schemas describing the SFS data structure and presentational tools to assist you in generating accurate SFS statements form your software. 

## Data Definition Specification
The aim is that these schemas will provides standardization around storing the data of a personal budget, making it easier and more efficient to create, modify, verify, analyze and share such information across systems.

Current schemas include:

- SFS Budget Summary Schema
- SFS Data Entry Schema

These are available in JSON and XSD format

### JSON Schemas

The JSON schemas are written in [JSON Schema](http://json-schema.org/), and currently consists of the following files:

- [sfs-summary-schema.json](/json/sfs-summary-schema.json)
- [sfs-data-entry-schema.json](/json/sfs-data-entry-schema.json) (Coming soon)

### XSD Schemas

The XSD Schemas are written in [XML Schema](https://www.w3.org/2001/XMLSchema), and currently consist of the following files

- [sfs-summary-schema.xsd](/xsd/sfs-summary-schema.xsd) (Coming soon)
- [sfs-data-entry-schema.xsd](/xsd/sfs-data-entry-schema.xsd) (Coming soon)

## Form generation templates
The aim of these templates is to provide software developers an easy way to generate compliant SFS Statements from their data. These can be either rendered on screen or saved out as a PDF using a third-party HTML2PDF binary such as [wkhtmltopdf](https://wkhtmltopdf.org/) or [PhantomJS](http://phantomjs.org/).

- [sfs-summary-template.html](/html/sfs-summary-template.html)
- [sfs-data-entry-template.html](/html/sfs-data-entry-template.html) (Coming soon)

