use File::Copy;
copy ("names_groups.txt", "2-names_groups.txt") or die "Copy Failed: $!";
