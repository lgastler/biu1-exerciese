simple_rectangle = {[0, 0], [0, 1], [1, 1], [1, 0], [0, 0]};
complex_polygon = {[1, 1], [2, -1], [3, 1], [4, 2], [3, 3], [-1, 2], [1, 1]};

simple_rectangle_perimeter = poly_perimeter(simple_rectangle);
complex_polygon_perimeter = poly_perimeter(complex_polygon);

assert(simple_rectangle_perimeter == 4);
assert(complex_polygon_perimeter == (2 * sqrt(2) + 3 * sqrt(5) + sqrt(17)));
