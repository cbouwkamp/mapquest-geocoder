#!/usr/bin/perl -w
use lib 'C:\Users\Chris\Desktop\Sites\mqgeocoder';
use mapquestgeocoder;

$coorTest = new Mqgeocoder();
$coorTest->setCity("Broken Arrow");
$coorTest->setAddress("21521 E 32nd St");
$coorTest->setKey("xxxxxxxxxx");
$coorTest->setState("OK");
$coorTest->setZip("74014");
my %latitude = $coorTest->geocode();
print $latitude{"latitude"};