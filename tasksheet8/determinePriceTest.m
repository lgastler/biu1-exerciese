result_price_a_to_b = determinePrice("a", "b", false);
result_price_c_to_i = determinePrice("c", "i", false);
result_price_d_to_h = determinePrice("d", "h", false);
result_price_f_to_c = determinePrice("f", "c", false);
result_price_b_to_e = determinePrice("b", "e", false);
result_price_f_to_g = determinePrice("f", "g", false);

result_price_g_to_i_through_center = determinePrice("g", "i", true);
result_price_a_to_j_through_center = determinePrice("a", "j", true);

actual_price_a_to_b = double(8.00);
actual_price_c_to_i = double(1.60);
actual_price_d_to_h = double(1.60);
actual_price_f_to_c = double(3.20);
actual_price_b_to_e = double(3.20);
actual_price_f_to_g = double(4.80);

actual_price_g_to_i_through_center = double(12.80);
actual_price_a_to_j_through_center = double(14.40);

assert(areEssentiallyEqual(result_price_a_to_b, actual_price_a_to_b));
assert(areEssentiallyEqual(result_price_c_to_i, actual_price_c_to_i));
assert(areEssentiallyEqual(result_price_d_to_h, actual_price_d_to_h));
assert(areEssentiallyEqual(result_price_f_to_c, actual_price_f_to_c));
assert(areEssentiallyEqual(result_price_b_to_e, actual_price_b_to_e));
assert(areEssentiallyEqual(result_price_f_to_g, actual_price_f_to_g));

assert(areEssentiallyEqual(result_price_g_to_i_through_center, actual_price_g_to_i_through_center));
assert(areEssentiallyEqual(result_price_a_to_j_through_center, actual_price_a_to_j_through_center));
