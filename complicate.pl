#!/usr/bin/perl

$string = "Cats go Catatonic\nWhen given Catnip";
($start) = ($string=~ /\A(.*?)/);
@lines = $string =~ /^(.*?)/gm;
print "First Word: $start\n","Line starts: @lines\n";