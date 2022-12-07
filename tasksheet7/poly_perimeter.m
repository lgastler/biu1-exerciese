function polygon_perimeter = poly_perimeter(inputCoordinates)
    polygon_perimeter = 0;

    for index = 1:length(inputCoordinates) - 1
        x_value_square = ((inputCoordinates{index + 1}(1)) - (inputCoordinates{index}(1))) ^ 2;
        y_value_square = ((inputCoordinates{index + 1}(2)) - (inputCoordinates{index}(2))) ^ 2;

        current_value = sqrt(x_value_square + y_value_square);
        polygon_perimeter = polygon_perimeter + current_value;
    end

end
