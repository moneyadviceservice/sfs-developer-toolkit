# Standard Financial Statement: HTML Templates
Developed for the Money Advice Service by [Electric Putty Ltd](http://electricputty.co.uk).

## Purpose
These HTML templates have been developed to render the SFS on screen or as a PDF.

On screen they should render correctly in all modern browsers. The CSS contains a set width defined in pixels, if you want to make this responsive you will need to update the CSS to use a relative value.

If you want to generate a PDF they have been optomised to render correctly using PhantomJS. If you want to use an alternative HTML2PDF service it may be necesary to make some updates to the CSS.

## Output format
If you want to use thse on screen you must apply the 'screen' class to the body element. e.g. 

```
	<body class="screen">
```

To render as a PDF using PhantomJS apply the 'a4' class to the body element. e.g 

```
	<body class="a4">
```

## Populating with data
**Please note:** There is no data processing logic in these templates - they provide presentational instructions only. You will need to convert this HTML into a package-specific templates which can process the SFS data and populate the HTML.

Where a single string or number value is required, the containing element has an ID which matches the value. e.g.

```
	<div class="sfs__row sfs__row--special-padding">
			<p class="sfs__label">Name:</p>
			<p class="sfs__text sfs__output" id="client-name"></p>
	</div>
```

Where a 'tick' is required a class of 'checked' needs to be applied to the element itself. e.g.

```
	<p class="sfs__label">Employment:</p>
	<p class="sfs__checkbox checked" id="client-employment-status__full-time">Full-time</p>
	<p class="sfs__checkbox checked" id="client-employment-status__part-time">Part-time</p><br>
	<p class="sfs__checkbox" id="client-employment-status__unemployed">Unemployed</p>

```

 

