use strict;
use warnings;
use 5.010;

my @words = ('Foo', 'Bar', 'Baz');

my ($x) = @words;	#Foo, implied (var1, var2, var3)
my $y   = @words;	#3, direct assignment so, SCALAR context

say $x;
say $y;

say @words;
say localtime();	#the 9 numbers returned by the localtime() function in LIST context

say scalar @words;
say scalar localtime()
