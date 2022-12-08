% number of corners
coordinates_amount = 0;

% keep track of the first run for better input hints
first_run = true;

while coordinates_amount < 3

    input_hint = "Enter at least 3 corners otherwise we cannot calculate anything! \n";

    if (first_run)
        input_hint = "Enter the number of corners for your polygon? \n";
    end

    coordinates_amount = input(input_hint);

    first_run = false;

end

% predefine size of cell
coordinates = cell(coordinates_amount + 1, 1);
% loop over the set coordinates_amount to set x and y values
for coordinate_index = 1:coordinates_amount
    x_value = input(sprintf("Enter the x-value for coordinate %d \n", coordinate_index));
    y_value = input(sprintf("Enter the y-value for coordinate %d \n", coordinate_index));

    coordinates{coordinate_index} = [x_value; y_value];
end

% add last coordinate same as the first one
coordinates{coordinates_amount + 1} = coordinates{1};

% get the perimeter
result_perimeter = poly_perimeter(coordinates);

% get the area
result_area = poly_area(coordinates);

% coordinates clockwise
coordinates_entered_clockwise = result_area >= 0;

fprintf("Perimeter: %g \nArea: %g \nClockwise: %s \n", result_perimeter, result_area, mat2str(coordinates_entered_clockwise));
