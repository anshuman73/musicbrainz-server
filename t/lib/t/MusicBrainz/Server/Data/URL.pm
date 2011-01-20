package t::MusicBrainz::Server::Data::URL;
use Test::Routine;
use Test::Moose;
use Test::More;

use_ok 'MusicBrainz::Server::Data::URL';

use MusicBrainz::Server::Context;
use MusicBrainz::Server::Test;
use Sql;

with 't::Context';

test all => sub {

my $test = shift;
MusicBrainz::Server::Test->prepare_test_database($test->c, '+url');

my $url_data = MusicBrainz::Server::Data::URL->new(c => $test->c);

my $url = $url_data->get_by_id(1);
is ( $url->id, 1 );
is ( $url->gid, "9201840b-d810-4e0f-bb75-c791205f5b24" );
is ( $url->url, "http://musicbrainz.org/" );
is ( $url->description, "MusicBrainz" );
is ( $url->edits_pending, 0 );
is ( $url->reference_count, 2 );

my $sql = Sql->new($test->c->dbh);
my $raw_sql = Sql->new($test->c->raw_dbh);
$sql->begin;
$raw_sql->begin;

$url_data->update($url->id, {
    url => 'http://google.com',
    description => 'Google'
});

$url = $url_data->get_by_id(1);
is ( $url->id, 1 );
is ( $url->gid, "9201840b-d810-4e0f-bb75-c791205f5b24" );
is ( $url->url, 'http://google.com' );
is ( $url->description, 'Google' );

$url_data->update(2, {
    url => 'http://google.com',
    description => 'Google'
});

is($url_data->get_by_gid('9b3c5c67-572a-4822-82a3-bdd3f35cf152')->id,
   $url_data->get_by_gid('9201840b-d810-4e0f-bb75-c791205f5b24')->id);

$sql->commit;
$raw_sql->commit;

};

1;
