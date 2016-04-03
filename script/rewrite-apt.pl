#!/usr/bin/env perl

use strict;

$| = 1;

while (<>) {
  my @line = split;
  $_ = $line[0];
  if (m{^(https?)://[^/]*(archive|security).ubuntu.com/(.*)}) {
    print "OK rewrite-url=\"http://172.28.128.1:3000/$3\"\n";
  } 
  else {
    print "$line[0]\n";
  }
}

