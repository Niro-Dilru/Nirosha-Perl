#!/usr/bin/perl

open( FILE, "names_groups.txt" ) || die "Enable to open test file";
$char = getc (FILE);
print "First Character is $char\n";
$char = getc( FILE );
print "Second Character is $char\n";
#Now check the position of read pointer.
$position= tell( FILE );
print "Position with in file $Position\n";
close (FILE);
