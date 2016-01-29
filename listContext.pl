use strict;
use warnings;
 
print "Please type in the names of the programming languages you know: ";
my @names = <STDIN>;	#will keep accepting input until ctrl+d (ctrl+z)

chomp @names;
print "Hello, I see you know " . scalar(@names) . "\n";