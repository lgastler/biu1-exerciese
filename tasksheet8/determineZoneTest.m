result_zone_a = determineZone("A");
result_zone_b = determineZone("B");
result_zone_c = determineZone("C");
result_zone_d = determineZone("D");
result_zone_e = determineZone("E");
result_zone_f = determineZone("F");
result_zone_g = determineZone("G");
result_zone_h = determineZone("H");
result_zone_i = determineZone("I");
result_zone_j = determineZone("J");

result_lower_case_a = determineZone("a");

result_with_extra_space_one = determineZone("a ");
result_with_extra_space_two = determineZone("  a");

result_invalid_char_one = determineZone(" ");
result_invalid_char_two = determineZone("%");

assert(result_zone_a == 5);
assert(result_zone_b == 1);
assert(result_zone_c == 4);
assert(result_zone_d == 3);
assert(result_zone_e == 2);
assert(result_zone_f == 3);
assert(result_zone_g == 5);
assert(result_zone_h == 3);
assert(result_zone_i == 4);
assert(result_zone_j == 5);

assert(result_lower_case_a == 5);

assert(result_with_extra_space_one == 5);
assert(result_with_extra_space_two == 5);

assert(isnan(result_invalid_char_one));
assert(isnan(result_invalid_char_two));
