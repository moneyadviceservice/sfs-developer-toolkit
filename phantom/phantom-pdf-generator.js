var page = require('webpage').create();
var system = require('system');

var args = system.args;

if (args.length < 7 || args.length > 8) {

    console.log('PhantomJS Error: Incorrect number of arguments supplied');
    phantom.exit();

} else {

    sourceHTML = args[1];
    outputFile = args[2];
    paperWidth = args[3];
    paperHeight = args[4];
    paperOrientation = args[5];
    zoomFactor = args[6];
    compressionLevel = args[7];

    page.paperSize = {
        width: paperWidth + 'mm',
        height: paperHeight + 'mm',
    };

    page.open(sourceHTML, function (status) {
        if (status !== 'success') {
            console.log('PhantomJS Error: Unable to load the sourceHTML');
        } else {
            window.setTimeout(function () {
                page.render(outputFile, { format: 'pdf', quality: compressionLevel });
                phantom.exit(0);
            }, 200);
        }
    });
}
