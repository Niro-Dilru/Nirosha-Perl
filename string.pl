#!/usr/bin/perl

$string = "The cat sat on the mat";
$string =~ s/cat/dog/;

print "$string\n";

print "...............................\n";

#!/usr/bin/perl

$string = "The cat sat on the mat";
$string =~ tr/a/o/;

print "$string\n";

print "...............................\n";

#!/usr/bin/perl

$string = "The cat sat on the mat";
$string =~ tr/a-z/b/d;

print "$string\n";

print "...............................\n";


#!/usr/bin/perl

$string = 'food';
$string = 'food';
$string =~ tr/a-z/a-z/s;

print "$string\n";

print "...............................\n";


