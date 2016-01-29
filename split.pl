use strict;
use warnings;
use 5.010;
use Data::Dumper qw(Dumper);

#split sample 1
my $str = "ab cd ef gh ij";
my @words = split / /, $str;	#split REGEX, STRING, LIMIT
print Dumper \@words;

#split sample 2
my $str = "root:*:0:0:System Administrator:/var/root:/bin/sh";
my @fields = split /:/, $str;
my $username = $fields[0];
my $real_name = $fields[4];
print "$username\n";
print "$real_name\n";

#split with array slice
my $str = "root:*:0:0:System Administrator:/var/root:/bin/sh";
my @fields = split /:/, $str;
my ($username, $real_name) = @fields[0, 4];
print "$username\n";
print "$real_name\n";

#split on multiple characters
my $str = 'fname=Foo&lname=Bar&email=foo@bar.com';
my @words = split /[=&]/, $str;
print Dumper \@words;

#split to a hash
my %user = split /[=&]/, $str;
print Dumper \%user;

#join
my @names = ('Foo', 'Bar', 'Moo');
my $str = join ':', @names;
say $str;