module Acme::Addslashes;
sub addslashes(Str $string) is export {
    $string.subst(/ <after . > /, "\c[COMBINING LONG SOLIDUS OVERLAY]", :g);
}
