#!/usr/bin/env perl

use strict;

$| = 1;

while (<>) {
    my @line = split;
    $_ = $line[0];
    if (m{^(https?)://[^/]*archive.ubuntu.com/(.*)}) {
        print "$1://172.28.128.1:3000/$2\n";
    } else {
        print $_ . "\n";
    }
}
