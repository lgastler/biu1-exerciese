function [co2, distance, isFlightShort] = calculateFlight(location1,location2)
%calculateFlight Calculates the co2 emissions distance and flight type for 2 given locations using radian coordinates

radius_earth = 6367.335;

startLocationCell = num2cell(location1);
[startWidthRad, startLengthRad] = startLocationCell{:};
endLocationCell = num2cell(location2);
[endWidthRad, endLengthRad] = endLocationCell{:};

under_sqrt = ...
    sin((endWidthRad - startWidthRad)/2)^2 ...
    + cos(startWidthRad) ...
    * cos(endWidthRad) ...
    * sin((endLengthRad - startLengthRad)/2)^2;
distance = 2 * radius_earth * asin(sqrt(under_sqrt));

isFlightShort = distance < 800;

start_landing_distance = 100;
co2_emissions_per_passenger = 9.04;

if isFlightShort
    start_landing_distance = 60;
    co2_emissions_per_passenger = 14.86;
end

co2_during_flight = ((distance - start_landing_distance) / 100) * co2_emissions_per_passenger;
co2_start_landing = start_landing_distance / 100 * 1.5 * co2_emissions_per_passenger;
co2 = co2_during_flight + co2_start_landing;

end

