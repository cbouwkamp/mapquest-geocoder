#!/usr/bin/perl -w
use lib 'C:\Users\Chris\Desktop\Sites\mqgeocoder';
use mapquestgeocoder;

$coorTest = new Mqgeocoder();
$coorTest->setCity("Broken Arrow");
$coorTest->setAddress("21521 E 32nd St");
$coorTest->setKey("Fmjtd%7Cluurn90821%2C2x%3Do5-9wtl90");
$coorTest->setState("OK");


my %latitude = $coorTest->geocode();
print $latitude{"latitude"};