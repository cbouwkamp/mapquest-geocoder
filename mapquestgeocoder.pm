#!/usr/bin/perl 
package mqgeocoder;

sub new{
    my $class = shift;
    my $self = {
        _city => undef,
        _state => undef,
        _zip => undef,
        _address => undef,
        _key => undef    
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
1;