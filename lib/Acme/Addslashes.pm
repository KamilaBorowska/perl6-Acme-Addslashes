module Acme::Addslashes;
sub addslashes is export (Str $string) {
    $string.subst(/ (.) /, { "$0\c[COMBINING LONG SOLIDUS OVERLAY]" }, :g);
}
