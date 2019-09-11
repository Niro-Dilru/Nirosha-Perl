#Link Lists

## Method #2 Reference Variable, or Pointers

@links = qw ( 2 Null 1);
print "Using Pointers\n";

@nodes = qw (finger:Null whois:Null who:Null);
for ($i = 0; $i <= $#nodes; $i++)
	{ $ptr = \$nodes[$i];
		@data = split(/:/,$$ptr);
		print "Before: $ptr @data ";
		$data[1] = $links[$i];
		print "-> @data \n";
		$$ptr = join ':', @data;
	}
	
print "\n\n";
print ".............................................\n"