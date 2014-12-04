package mqgeocoder;
use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw();

sub new{
    my $type = shift;
    my $class = ref $type || $type;
    my $self = {
        CITY => undef,
        STATE => undef,
        ZIP => undef,
        ADDRESS => undef,
        KEY => undef    
    };
    my $closure = sub {
    my $field = shift;
            @_ and $self->{$field} = shift;
            $self->{$field};
    };
    bless $closure, $class;
    $closure;
    sub city { &{ $_[0] }("CITY", @_[1 .. $#_ ] ) }
    sub state  { &{ $_[0] }("STATE",  @_[1 .. $#_ ] ) }
    sub zip { &{ $_[0] }("ZIP", @_[1 .. $#_ ] ) }
    sub address  { &{ $_[0] }("ADDRESS",  @_[1 .. $#_ ] ) }
    sub key { &{ $_[0] }("KEY", @_[1 .. $#_ ] ) }
}

