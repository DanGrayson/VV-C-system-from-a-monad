add_cus_dep('glo', 'gls', 0, 'makegloss');
add_cus_dep('slo', 'sls', 0, 'makegloss');
add_cus_dep('acn', 'acr', 0, 'makegloss');
sub makegloss { system("makeglossaries $_[0]"); }

