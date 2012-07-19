module Acme::Addslashes;
my $soldius = "\c[COMBINING LONG SOLIDUS OVERLAY]";
sub addslashes(Str $string) is export {
    $string.subst: / (.) /, -> $/ { $0 ~ $soldius }, :g;
}
