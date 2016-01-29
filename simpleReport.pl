use strict;
use warnings;

my @strings = ('hello', 'world', 'hello', 'Perl');

my %count;

foreach my $str (@strings) {
    $count{$str}++;
}

foreach my $str (sort keys %count) {
    printf "%-31s %s\n", $str, $count{$str};
}

#alternat version
print "\n";
my $text = "hello world hello Perl";
my @strings2 = split / /, $text;

foreach my $str (@strings2) {
    $count{$str}++;
}