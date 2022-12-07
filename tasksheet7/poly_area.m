function polygon_area = poly_area(inputCoordinates)
    polygon_area = 0;

    for index = 1:length(inputCoordinates) - 1
        x_value = ((inputCoordinates{index}(1)) - (inputCoordinates{index + 1}(1)));
        y_value = ((inputCoordinates{index}(2)) + (inputCoordinates{index + 1}(2)));

        current_value = 0.5 * x_value * y_value;
        polygon_area = polygon_area + current_value;
    end

end
