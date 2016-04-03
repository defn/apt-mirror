#!/usr/bin/env perl

use strict;

$| = 1;

while (<>) {
  my @line = split;
  $_ = $line[1];
  if (m{^(https?)://archive.ubuntu.com/(.*)}) {
    print "OK rewrite-url=\"http://172.28.128.1:3000/$2\"\n";
  } 
  else {
    print "$line[0]\n";
  }
}
