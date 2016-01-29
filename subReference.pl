use strict;
use warnings;

my @first  = (2, 3);
my @second = (7, 8, 5);
add(\@first, \@second);  # passing two references

sub add {
    my ($one_ref, $two_ref) = @_;
    my @one = @{ $one_ref };       # dereferencing and copying each array
    my @two = @{ $two_ref };

    print "@one\n";    # 2 3
    print "@two\n";    # 7 8 5

}