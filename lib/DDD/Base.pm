package DDD::Base;
use Moose;
use namespace::autoclean;

=head1 NAME

DDD::Base - base class for DDD

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 ATTRIBUTES

=cut

# does not work -- Bread::Board service needed.
# has domain => (
#     is       => 'ro',
#     isa      => 'Object', ### FIXME: or some Bread::Board... stuff ?
#     required => 1,
# );

=head1 METHODS

=cut

=head1 AUTHOR

Wolfgang Kinkeldei

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;
1;
