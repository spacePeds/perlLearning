use strict;
use warnings;
use 5.010;
use Getopt::Long qw(GetOptions);
Getopt::Long::Configure qw(gnu_getopt);
use Data::Dumper;

####
# perl cli.pl -df Foo
####

my $debug;
my $source_address = 'Maven';
GetOptions(
    'from|f=s' => \$source_address,
    'debug|d' => \$debug,
) or die "Usage: $0 --debug  --from NAME\n";

say $debug ? 'debug' : 'no debug';
if ($source_address) {
    say $source_address;
}