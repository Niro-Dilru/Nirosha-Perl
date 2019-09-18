$a = 10;
*b = *a;
$b++ ; #1. Increment $a indirectly through the typeglobe
$r = \$a; $$r++; #2. Increment $a indirectly thought the reference

@array = (10, 20);
DoubleEachEntry(
*array
) ; # @array and @copy are identicaal.
print "@array \n"; #prints 20 40

sub DoubleEachEntry {
	#$_[0] contains *array
	local
*copy 
	= shift; # Create a local alias
		foreach $element (@copy ){
		$element *= 2;
		}
		}
