#!/usr/bin/perl
   
use Net::Ping;

@sites = ("localhost", "127.0.0.1", "tdsql.advisical.com", "polls.advisical.com");
$ssize = scalar @sites;
print "# of local sites:  $ssize\n";
for ($i = 0; $i < $ssize; $i++) {
   print $sites[$i], "\n";
}
print '...', "\n";
$c = 0;
$p = Net::Ping->new();
for ($i = 0; $i < $ssize; $i++) {
if ($p->ping($sites[$i])) {
   print "$sites[$i] is available\n";
   $c = $c + 1
} else {
   print "$sites[$i] is not available\n";
}
}
print $c, ' out of ', $ssize, " can be ping\'ed\n"
