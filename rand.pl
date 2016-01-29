use strict;
use warnings;
use 5.010;

use Scalar::Util qw(looks_like_number);

my $guess = '';

while(1) {
    
    print "Please guess a number or type 'q' for exit# ";
    $guess = <stdin>;
    chomp $guess;

    last if $guess eq 'q' || !looks_like_number($guess);	

    say "Your guess is", ( int $guess > (int rand 199) + 1 ) ? ' Bigger' : ' Smaller';	

}

print "Thank you for participate!"
