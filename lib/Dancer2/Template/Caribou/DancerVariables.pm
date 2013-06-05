package Dancer2::Template::Caribou::DancerVariables;
#ABSTRACT: Role providing Dancer attributes to the template objects

=head1 SYNOPSIS

    package Dancer2::View::MyView;

    use Moose;
    use Template::Caribou;

    with qw/ 
        Template::Caribou 
        Dancer2::Template::Caribou::DancerVariables 
    /;

    template page => sub {
        my $self = shift;
        
        print ::RAW $self->uri_for( '/foo' );
    };

=head1 DESCRIPTION

C<Dancer2::Template::Caribou::DancerVariables> adds attributes and methods to
allow interactions with the L<Dancer2> application and its context.

=cut

use strict;
use warnings;

use Moose::Role;

=method context()

Returns the current L<Dancer2::Core::Context> object.

=cut

has "context" => (
    is => 'ro',
);

=method uri_for( $path ) 

Returns the absolute url for the given C<$path>.

=cut

sub uri_for {
    $_[0]->context->request->uri_for($_[1]);
}

1;

__END__





