package MusicBrainz::Server::Edit::Work::AddAnnotation;
use Moose;

use MusicBrainz::Server::Constants qw( $EDIT_WORK_ADD_ANNOTATION );
use MusicBrainz::Server::Translation qw( l ln );

extends 'MusicBrainz::Server::Edit::Annotation::Edit';
with 'MusicBrainz::Server::Edit::Work';

sub edit_name { l('Add work annotation') }
sub edit_type { $EDIT_WORK_ADD_ANNOTATION }

sub related_entities { { work => [ shift->work_id ] } }
sub models { [qw( Work )] }

sub _annotation_model { shift->c->model('Work')->annotation }

has 'work_id' => (
    isa => 'Int',
    is => 'rw',
    lazy => 1,
    default => sub { shift->data->{entity_id} }
);

has 'work' => (
    isa => 'Work',
    is => 'rw',
);

sub foreign_keys
{
    my $self = shift;
    return {
        Work => [ $self->work_id ],
    };
}

around 'build_display_data' => sub
{
    my $orig = shift;
    my ($self, $loaded) = @_;

    my $data = $self->$orig();
    $data->{work} = $loaded->{Work}->{ $self->work_id };

    return $data;
};

__PACKAGE__->meta->make_immutable;
no Moose;

1;
