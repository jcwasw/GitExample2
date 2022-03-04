#!/usr/bin/perl
use strict;
use WWW::Mechanize;
use Data::Dumper;

my $url = 'https://operator.angelo.edu';
my $m = WWW::Mechanize->new();

$m->get($url);
my $link = $m->find_link(text => 'Cisco Unified Communications Manager');
print Dumper($link);
#print "The Call Manager URL is: " . $link->url() . "\n";