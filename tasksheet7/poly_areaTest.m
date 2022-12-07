simple_rectangle = {[0, 0], [1, 0], [1, 1], [0, 1], [0, 0]};
simple_rectangle_reverse = flip(simple_rectangle);
complex_polygon = {[1, 1], [2, -1], [3, 1], [4, 2], [3, 3], [-1, 2], [1, 1]};
complex_polygon_reverse = flip(complex_polygon);

simple_rectangle_area = poly_area(simple_rectangle);
simple_rectangle_area_reverse = poly_area(simple_rectangle_reverse);
complex_polygon_area = poly_area(complex_polygon);
complex_polygon_area_reverse = poly_area(complex_polygon_reverse);

assert(simple_rectangle_area == 1);
assert(simple_rectangle_area_reverse == 1 * -1);
assert(complex_polygon_area == 8);
assert(complex_polygon_area_reverse == 8 * -1);
