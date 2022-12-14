function output = areEssentiallyEqual(a, b)
    % fprintf("The actual number is: %.20f \n", a);
    output = abs(a - b) < 0.0001;
end
