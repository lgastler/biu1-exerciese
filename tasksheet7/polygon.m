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
coordinates = cell(coordinates_amount + 1, 1, 1);

% loop over the set coordinates_amount to set x and y values
for coordinate_index = 1:coordinates_amount
    x_value = input(sprintf("Enter the x-value for coordinate %d \n", coordinate_index));
    y_value = input(sprintf("Enter the y-value for coordinate %d \n", coordinate_index));

    coordinates{coordinate_index} = [x_value; y_value];
end

% add last coordinate same as the first one
coordinates{coordinates_amount + 1} = coordinates{1};

% get the perimeter
perimeter = poly_perimeter(coordinates);

% get the area
area = poly_area(coordinates);

% coordinates clockwise
coordinates_entered_clockwise = area >= 0;

fprintf("Perimeter: %g \nArea: %g \nClockwise: %s \n", perimeter, area, mat2str(coordinates_entered_clockwise));

function polygon_perimeter = poly_perimeter(inputCoordinates)
    polygon_perimeter = 0;

    for index = 1:length(inputCoordinates) - 1
        x_value_square = ((inputCoordinates{index + 1}(1)) - (inputCoordinates{index}(1))) ^ 2;
        y_value_square = ((inputCoordinates{index + 1}(2)) - (inputCoordinates{index}(2))) ^ 2;

        current_value = sqrt(x_value_square + y_value_square);
        polygon_perimeter = polygon_perimeter + current_value;
    end

end

function polygon_area = poly_area(inputCoordinates)
    polygon_area = 0;

    for index = 1:length(inputCoordinates) - 1
        x_value = ((inputCoordinates{index}(1)) - (inputCoordinates{index + 1}(1)));
        y_value = ((inputCoordinates{index}(2)) + (inputCoordinates{index + 1}(2)));

        current_value = 0.5 * x_value * y_value;
        polygon_area = polygon_area + current_value;
    end

end
