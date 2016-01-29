use strict;
use warnings;
use 5.010;
use Getopt::Long qw(GetOptions);

####
# perl debug.pl --debug
# perl debug.pl
# perl debug.pl --test
####

my $debug;
GetOptions('debug' => \$debug) or die "Usage: $0 --debug\n";
say $debug ? 'debug' : 'no debug';