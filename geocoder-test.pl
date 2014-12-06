#!/usr/bin/perl -w
use lib 'C:\Users\Chris\Desktop\Sites\mqgeocoder';
use mapquestgeocoder;

$coordinates = new Mqgeocoder();
$coordinates->setCity("Broken Arrow");
$coordinates->setAddress("21521 E 32nd St");
$coordinates->setKey("Fmjtd%7Cluurn90821%2C2x%3Do5-9wtl90");
$coordinates->setState("OK");

my %geocoded = $coordinates->geocode();

print $geocoded{"latitude"} . "\n";
print $geocoded{"longitude"} . "\n";
print $geocoded{"quality"} . "\n";