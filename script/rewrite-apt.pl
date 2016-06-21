#!/usr/bin/env perl

use strict;

$| = 1;

while (<>) {
  my @line = split;
  $_ = $line[0];
  if (m{^(https?)://[^/]*(archive|security).ubuntu.com/(.*)}) {
    print "OK rewrite-url=\"$ENV{'CACHE_VIP'}:3000/$3\"\n";
  } 
  else {
    print "$line[0]\n";
  }
}

