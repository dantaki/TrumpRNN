#!/usr/bin/perl
use strict; use warnings;
open IN, $ARGV[0];
while(<IN>){
	chomp;
	my @r = split /\//, $_;
	foreach my $n (@r) {
		my @s = split /\[/, $n;
		$s[0] =~ s/^ //;
		print "$s[0]\n"; 
	}
}close IN;
