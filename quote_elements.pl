#!/usr/bin/perl
use warnings;
use strict;

##
# Given an input string with a comma-separated
# list of barewords, return the same list but 
# each element is surrounded by double-quotes.
##

my $input = shift;


print "\n";

my $result = join ", ", map { qq["$_"] } (split /, /, $input);

$result =~ s/""/"``"/g;

print $result, "\n";