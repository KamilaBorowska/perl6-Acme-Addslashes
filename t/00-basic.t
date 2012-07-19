use v6;
use Test;

plan 4;

my $solidus = "\c[COMBINING LONG SOLIDUS OVERLAY]";

use Acme::Addslashes;
pass "Loaded Acme::Addslashes";

is addslashes('cat'), "c{$solidus}a{$solidus}t{$solidus}", 'Basic test';
is addslashes('0'), "0{$solidus}", 'Addslashes of one character';
is addslashes(""), "", 'Addslashes of nothing';
