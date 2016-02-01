use strict;
use warnings;
use 5.010;

use Cpanel::JSON::XS qw(encode_json decode_json);

#encode
my $student = {
    name => 'Foo Bar',
    email => 'foo@bar.com',
    gender => undef,
    classes => [
        'Chemistry',
        'Math',
        'Litreture',
    ],
    address => {
        city => 'Fooville',
        planet => 'Earth',
    },
};

my $student_json = encode_json $student;
say $student_json;

#decode
my $student_json = '{"classes":["Chemistry","Math","Litreture"],"gender":null,"name":"Foo Bar","email":"foo@bar.com","address":{"city":"Fooville","planet":"Earth"}}';

my $student = decode_json $student_json;

use Data::Dumper;
print Dumper $student;