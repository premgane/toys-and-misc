#!/usr/bin/perl
use warnings;
use strict;

my $inFilename = shift;
my $outFilename = shift;

open my $inFH, '<', $inFilename;
my $line = <$inFH>;
close $inFH;

print join("\n", split(q[', '], $line));