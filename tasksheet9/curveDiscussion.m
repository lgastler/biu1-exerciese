function [zeroes] = curveDiscussion(fnc, lowerBound, upperBound)
    %   curveDiscussion: This function will plot a function and its derivative
    %   fnc: the function to be plotted
    %   lowerBound: the lower bound of the domain
    %   upperBound: the upper bound of the domain

    values = linspace(lowerBound, upperBound, 1000);
    zeroes = 1:1000;

    % find the zeroes of the function using fzero
    for i = 1:1000
        found_zero = fzero(fnc, values(i));
        found_zero = round(found_zero, 4);
        % only save a new zero if it is not already added to the array
        if ~ismember(found_zero, zeroes)
            zeroes(i) = found_zero;
        else
            zeroes(i) = NaN;
        end

    end

    disp(zeroes);

    % calculate the first derivative of the function
    values_first_deriv = diff(fnc(values), 1) / 0.0001;
    values_first_deriv = [values_first_deriv values_first_deriv(end)]; % set the last value to the one before that to avoid reducing the size of the array

    % calculate the second derivative of the function
    values_second_deriv = diff(values_first_deriv, 1) / 0.0001;
    values_second_deriv = [values_second_deriv values_second_deriv(end)];

    % plot the function and its derivative and the zero values
    figure;
    subplot(3, 1, 1);
    plot(values, fnc(values));
    hold on;
    plot(zeroes, fnc(zeroes), 'o');
    title('Function');
    subplot(3, 1, 2);
    plot(values, values_first_deriv);
    title('First Derivative');
    subplot(3, 1, 3);
    plot(values, values_second_deriv);
    title('Second Derivative');

end
