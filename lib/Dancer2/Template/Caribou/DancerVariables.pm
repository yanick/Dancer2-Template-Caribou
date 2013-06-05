package Dancer2::Template::Caribou::DancerVariables;
BEGIN {
  $Dancer2::Template::Caribou::DancerVariables::AUTHORITY = 'cpan:YANICK';
}
{
  $Dancer2::Template::Caribou::DancerVariables::VERSION = '0.2.1';
}
#ABSTRACT: Role providing Dancer attributes to the template objects


use strict;
use warnings;

use Moose::Role;


has "context" => (
    is => 'ro',
);


sub uri_for {
    $_[0]->context->request->uri_for($_[1]);
}

1;

__END__

=pod

=head1 NAME

Dancer2::Template::Caribou::DancerVariables - Role providing Dancer attributes to the template objects

=head1 VERSION

version 0.2.1

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

=head1 METHODS

=head2 context()

Returns the current L<Dancer2::Core::Context> object.

=head2 uri_for( $path ) 

Returns the absolute url for the given C<$path>.

=head1 AUTHOR

Yanick Champoux <yanick@babyl.dyndns.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Yanick Champoux.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
