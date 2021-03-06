#!perl -l
# AMFV security code lookup
# written by Ricardo SIGNES, 2003
# placed in the public domain

map { $wheel{$_} = ((++$i)-1); }
  qw(89 61 50 18 29 52 46 77 27 68 22 95 40 58 15 86
     28 33 94 11 64 98 34 49 60 16 85 52 37 53 93 91);

map { $color{$_} = ((++$j)-1); }
  qw(dkgreen blue   pink   orange purple tan   aqua ltblue
     ltgreen ltgrey yellow black  dkgrey brown red  white);

@values = qw(73 36 90 41 19 48 62 92 55 23 84 99 57 20 78 67
             51 88 17 31 70 39 96 25 81 83 47 54 13 43 12 66);

print "result ", $values[($wheel{$ARGV[1]} + (2 * $color{$ARGV[0]})) % 32];
