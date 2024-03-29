﻿use warnings;
use 5.010;

use Data::Dumper qw(Dumper);

sub selectionSort {

	my @list = @_;
	for my $i (0 .. $#list - 1) {
	my $min = $i;
	for my $j ($i .. $#list) {
		if ($list[$j] < $list[$min]) {
		$min = $j;
}
}
	if ($i !=$min) {
	@list[$i, $min] = @list[$min, $i];
}
}
return @list;
}

my @unsorted = reverse(1 .. 10);
say Dumper \@unsorted;
my @sorted = selectionSort(@unsorted);
say Dumper \@sorted;

