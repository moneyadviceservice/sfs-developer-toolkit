# The Standard Financial Statement Developer Toolkit

The Standard Financial Statement (SFS) is a landmark development for debt advice in the UK which delivers, for the first time, a universal income and expenditure statement, together with a single set of spending guidelines. For more information please visit: [sfs.moneyadviceservice.org.uk](https://sfs.moneyadviceservice.org.uk/en/what-is-the-standard-financial-statement)

Key to the success of the SFS is absolute standardisation - no matter which software product generates an SFS the data and presentation must be consistent.

The Developer Toolkit is a set of resources aimed at helping software developers incorporate the SFS into their products. It currently contains:

- A Data Definition Specification
- Set of HTML templates

## [Data Definition Specification](/dds/readme.md)
The aim of the DDS is to make the SFS a portable and system agnostic standard. By clearly defining the structure of SFS data, including specific criteria to determine compliance, it will be possible to

- Engender confidence in the SFS through consistency and transparency
- Eliminates redundancy (since all products reference the same specification)
- Provides standardization, making it easier and more efficient to create, modify, verify,
analyze and share SFS data between products.

Schemas are available in XSD and JSON format and include:

- SFS Budget Summary Schema
- SFS Data Entry Schema

---
#### Example Use Case

There are plans to update the SFS Data Entry Excel file to include an export feature. When developed this will output a DDS compliant XML file. Any compliant software would then, in principle, be able to import this data and continue managing the client’s budget with no need to re-key any data. The potential time saving and error reduction benefits are clear.

---

### XSD Schemas

The XSD Schemas are written in [XML Schema](https://www.w3.org/2001/XMLSchema), and currently consist of the following files

- [sfs-data-entry-schema.xsd](/dds/v1/xsd/sfs-data-entry-schema.xsd)
- [sfs-summary-schema.xsd](/dds/v1/xsd/sfs-summary-schema.xsd) (Coming soon)

### JSON Schemas

The JSON schemas are written in [JSON Schema](http://json-schema.org/), and currently consists of the following files:

- [sfs-data-entry-schema.json](/dds/v1/json/sfs-data-entry-schema.json) (Coming soon)
- [sfs-summary-schema.json](/dds/v1/json/sfs-summary-schema.json) (In progress)


## HTML templates
The aim of these templates is to provide software developers an easy way to generate a presentationally compliant SFS from their data. Utilising these templates will ensure that:

- Fonts are correct
- Colours are correct
- The logo is correct
- The layout is correct (e.g. number of pages / data on the correct page)

These can be either rendered on screen or used to generate PDF files using a third-party HTML to
PDF technology (e.g. [wkhtmltopdf](https://wkhtmltopdf.org/) or [PhantomJS](http://phantomjs.org/)).

Most HTML to PDF technology is system agnostic so can be used regardless of the technology a
proprietary software product is developed in.

Current templates include:

- [sfs-summary-template.html](/html/sfs-summary-template.html)
- [sfs-data-entry-template.html](/html/sfs-data-entry-template.html) (Coming soon)



 



