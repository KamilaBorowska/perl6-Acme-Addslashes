module Acme::Addslashes;
my $soldius = "\c[COMBINING LONG SOLIDUS OVERLAY]";
sub addslashes(Cool $string) is export {
    $string.subst: / (.) /, -> $/ { $0 ~ $soldius }, :g;
}
