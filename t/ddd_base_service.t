use strict;
use warnings;
use Test::More;

use ok 'DDD::Base::Service';

{
    package S;
    use Moose;
    extends 'DDD::Base::Service';

    has diagnostics => (is => 'rw', isa => 'Str', default => '');

    sub do_this {
        my $self = shift;

        $self->diagnostics($self->diagnostics . 'do_this');
    }

    sub _enter_method {
        my ($self, $method) = @_;

        $self->diagnostics($self->diagnostics . "enter:$method");
    }

    sub _leave_method {
        my ($self, $method) = @_;

        $self->diagnostics($self->diagnostics . "leave:$method");
    }
}

note 'callbacks';
{
    my $s = S->new;

    is $s->diagnostics,
        '',
        'diagnostics empty';

    $s->do_this;
    is $s->diagnostics,
        'enter:do_thisdo_thisleave:do_this',
        'diagnostics filled';
}

done_testing;
