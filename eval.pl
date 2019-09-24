use strict;
use warnings;

#Create a string containig perl code

my $code = q|
	my $text = "Hello";
	
	print "$text\n";
	
	#Delberately introduce an error
	# jlik
	
|;

my $result = eval($code);

#If there's a problem evalíng the
#code, eval() returns undef and
#the error is found in $@.
unless($result) {
print $@;
}
