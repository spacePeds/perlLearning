use strict;
use warnings;
use Data::Dumper qw(Dumper);

my %color_of = (
    "apple",  "red",
    "orange", "orange",
    "grape",  "purple",
);

my %alt_color_of = (
    "apple",  "red",
    "orange", "orange",
    "grape",  "purple",
);

#itertate
my @fruits = keys %color_of;
for my $fruit (@fruits) {
    print "The color of '$fruit' is $color_of{$fruit}\n";
}

#or:
for my $fruit (keys %alt_color_of) {
    print "The color of '$fruit' is $color_of{$fruit}\n";
}

print scalar keys %color_of;
print "\n";

my @fruits = qw(apple red orange orange grape purple);

my %color_of = @fruits;


print Dumper \@fruits;
print Dumper \%color_of;

#hash in scalar context
my $var = %alt_color_of;
if ($var) {
    print "I'm not empty\n";
}