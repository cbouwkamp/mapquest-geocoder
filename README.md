mapquest-geocoder
=================

A simple perl geocoder that runs on the mapquest API. Input the city, state, zip, and address and the module returns the latitude, longitude, and quality from mapquest.

####Requirements
######Installed Perl modules required are:
LWP::Simple
JSON

######Map Quest API Key
You can obtain your API key here: http://developer.mapquest.com/web/products/open/geocoding-service


####How to use
Example code:

######create new Mqgeocoder object
$coordinates = new Mqgeocoder();

######Set variables. Address, City, State, and KEY are required. Zip is optional, but can lead to inaccurate results
$coordinates->setCity("Broken Arrow");
$coordinates->setAddress("21521 E 32nd St");
$coordinates->setKey("Fmjtd%7Cluurn90821%2C2x%3Do5-9wtl90");
$coordinates->setState("OK");

my %geocoded = $coordinates->geocode();

print $geocoded{"latitude"} . "\n";
print $geocoded{"longitude"} . "\n";
print $geocoded{"quality"} . "\n";


http://www.mapquestapi.com/geocoding/geocodequality.html
