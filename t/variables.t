use strict;
use warnings;

use Test::More tests => 3;

package MyApp;

use Dancer2;
use Dancer2::Test;

{ 
    package Dancer2::View::MyView;
    use Moose;
    use Template::Caribou;

    use Test::More;

    with qw/ 
        Template::Caribou 
        Dancer2::Template::Caribou::DancerVariables 
    /;

    template page => sub {
        my $self = shift;
        
        isa_ok $self->context => 'Dancer2::Core::Context';
        is $self->uri_for( '/foo' ) => 'http://localhost/foo';
    };

}

setting template => 'Caribou';

get '/' => sub { template 'MyView' };

response_status_is '/' => 200;


