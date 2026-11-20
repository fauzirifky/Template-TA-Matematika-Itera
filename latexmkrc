add_cus_dep('nlo', 'nls', 0, 'make_nomenclature');
sub make_nomenclature {
  system("makeindex $_[0].nlo -s nomencl.ist -o $_[0].nls");
}
