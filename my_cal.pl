#!/usr/bin/perl

#set PERL5LIB=c:\path\to\dir, this is for set your PM path to be used

# using the package 'Calculator'
use Calculator;

use Try::Tiny;

# Defining values to the variables
$a = 10;
$b = 20;

#Subroutine call
#Calculator::subtraction($a,$b);

#Defining values to the variables

$a = 30;
$b = 10;

#Subroutine call
try{
Calculator::divide($a, $b);
} catch {
      warn "\n________________Error_________________";
      warn "\n$_";
} 
finally 
	if (@_) {
		print "\nDivide died with @_\n";
	} else
		print "\nDivide executed without error";
	}
};

# did not run
