use 5.010;
use strict;
use warnings;

say "enter a number ";
my $name = <STDIN>;
chomp $name;
say "enter another number ";
my $name2 = <STDIN>;
chomp $name2;
say "Your added number is: ";
say $name + $name2;