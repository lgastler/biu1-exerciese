result_two_zones = priceFromTo(1, 2);
result_two_zones_reverse = priceFromTo(2, 1);
result_three_zones = priceFromTo(1, 2);
result_same_zone = priceFromTo(1, 1);
result_without_first_zone = priceFromTo(5, 3);

actual_two_zones = double(3.2);
actual_two_zones_reverse = double(3.2);
actual_three_zones = double(3.2);
actual_same_zone = double(1.6);
actual_without_first_zone = double(4.8);

assert(areEssentiallyEqual(result_two_zones, actual_two_zones));
assert(areEssentiallyEqual(result_two_zones_reverse, actual_two_zones_reverse));
assert(areEssentiallyEqual(result_three_zones, actual_three_zones));
assert(areEssentiallyEqual(result_same_zone, actual_same_zone));
assert(areEssentiallyEqual(result_without_first_zone, actual_without_first_zone));
