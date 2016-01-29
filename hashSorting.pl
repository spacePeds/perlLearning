use strict;
use warnings;
use Data::Dumper qw(Dumper);

my %planets = (
   Mercury => 0.4,
   Venus   => 0.7,
   Earth   => 1,
   Mars    => 1.5,
   Ceres   => 2.77,
   Jupiter => 5.2,
   Saturn  => 9.5,
   Uranus  => 19.6,
   Neptune => 30,
   Pluto   => 39,
   Charon  => 39,
);

#random order
foreach my $name (keys %planets) {
    printf "%-8s %s\n", $name, $planets{$name};
}
print "\n";

#case insensitive value sort
foreach my $name (sort {lc $a cmp lc $b} keys %planets) {
    printf "%-8s %s\n", $name, $planets{$name};
}
print "\n";

#Sort the keys of the hash according to the values
foreach my $name (sort { $planets{$a} <=> $planets{$b} } keys %planets) {
    printf "%-8s %s\n", $name, $planets{$name};
}
print "\n";


#slightly improved for when value is same
foreach my $name (sort { $planets{$a} <=> $planets{$b} or $a cmp $b } keys %planets) {
    printf "%-8s %s\n", $name, $planets{$name};
}