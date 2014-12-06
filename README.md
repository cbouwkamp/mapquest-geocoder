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
```
#create new Mqgeocoder object
$coordinates = new Mqgeocoder();

#Set variables. Address, City, State, and KEY are required. Zip is optional, but can lead to inaccurate results

$coordinates->setCity("city");

$coordinates->setAddress("your address");

$coordinates->setKey("Your Key Here");

$coordinates->setState("state");

#Returned data is in key array. 
my %geocoded = $coordinates->geocode();

print $geocoded{"latitude"} . "\n";
print $geocoded{"longitude"} . "\n";
print $geocoded{"quality"} . "\n";
```

###Check what the mapquest returned quality means here
http://www.mapquestapi.com/geocoding/geocodequality.html
