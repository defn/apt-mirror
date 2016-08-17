#!/usr/bin/env perl

use strict;

$| = 1;

while (<>) {
  my @line = split;
  $_ = $line[0];

  if (-d "$ENV{'CACHE_DIR'}/cache/apt-mirror/mirror/archive.ubuntu.com") {
    if (m{^(https?)://[^/]*(archive|security).ubuntu.com/(.*)}) {
      print "OK rewrite-url=\"http://$ENV{'CACHE_VIP'}:3000/$3\"\n";
      next;
    } 
  }

  print "$line[0]\n";
}

