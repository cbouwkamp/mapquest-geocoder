#!/usr/bin/perl 
package Mqgeocoder;
use LWP::Simple qw(get);
use JSON qw(from_json);

sub new{
    my $class = shift;
    my $self = {
        _city => shift,
        _state => shift,
        _zip => shift,
        _address => shift,
        _key => shift    
    };
    bless $self, $class;
    return $self;
}


#Get and Set City Variables
sub setCity{
    my ( $self, $city ) = @_;
    $self->{_city} = $city if defined($city);
    return $self->{$city};
}
sub getCity {
    my( $self ) = @_;
    return $self->{_city};
}

#Get and Set State Variables
sub setState{
    my ( $self, $state ) = @_;
    $self->{_state} = $state if defined($state);
    return $self->{$state};
}
sub getState {
    my( $self ) = @_;
    return $self->{_state};
}

#Get and Set Zip Variables
sub setZip{
    my ( $self, $zip ) = @_;
    $self->{_zip} = $zip if defined($zip);
    return $self->{$zip};
}
sub getZip {
    my( $self ) = @_;
    return $self->{_zip};
}

#Get and Set Address Variables
sub setAddress{
    my ( $self, $address ) = @_;
    $self->{_address} = $address if defined($address);
    return $self->{$address};
}
sub getAddress {
    my( $self ) = @_;
    return $self->{_address};
}

#Get and Set Key Variables
sub setKey{
    my ( $self, $key ) = @_;
    $self->{_key} = $key if defined($key);
    return $self->{$key};
}
sub getKey {
    my( $self ) = @_;
    return $self->{_key};
}
sub geocode{
    my( $self ) = @_;
    $latitude = undef;
    $longitude = undef;
    $geocodeQuality = undef;
    $key = $self->{_key};
    $address = $self->{_address};
    $state = $self->{_state};
    $city = $self->{_city};
    $zip = $self->{_zip};
    my $url = 'http://www.mapquestapi.com/geocoding/v1/address?key='. $key . '&inFormat=kvp&outFormat=json&location='. $address . ', '. $city . ', '. $state . ' '.$zip.'&thumbMaps=false';
     print $url;
     my $content = from_json(get($url));
    foreach my $latlng (@{ $content->{results}})
    {
        $latitude = $latlng->{locations}[0]{displayLatLng}{lat};
        $longitude = $latlng->{locations}[0]{displayLatLng}{lng};
        $geocodeQuality = $latlng->{locations}[0]{geocodeQualityCode};
    }
    %values = ("latitude", $latitude, "longitude", $longitude, "quality", $geocodeQuality);
    return %values;
}
1;