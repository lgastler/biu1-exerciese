locations = ["Oslo"; "Moskau"; "Kopenhagen"; "Brüssel"; "Paris"; "Wien"; "München"; "Rom"; "Madrid"; "Athen"];
flightTypes = ["Medium distance", "Short distance"];

coordinates_deg = [
60.197782	11.099113;
55.973864	37.412642;
55.626974	12.667529;
50.900985	4.485521;
49.009726	2.547742;
48.113637	16.578002;
48.151948	11.548756;
41.799959	12.246303;
40.507755	-3.531626;
37.935681	23.948222;
];

coordinates_rad = coordinates_deg * (pi/180);

startLocation = input("Start Location (Number between 1 and 10): ");

locationNumberErrorMsg = "Location needs to be a number between 1 and 10 ... try again";

if startLocation < 1 || startLocation > 10
    disp(locationNumberErrorMsg)
    return
end
    
endLocation = input("End Location (Number between 1 and 10): ");

if endLocation < 1 || endLocation > 10
    disp(locationNumberErrorMsg)
    return
end

if startLocation == endLocation
    disp("That does not make any sense...")
    return;
end

location1 = coordinates_rad(startLocation, :);
location2 = coordinates_rad(endLocation, :);
[co2_emissions, distance, isFlightShort] = calculateFlight(location1, location2);

result_table = array2table([ ...
    locations(startLocation) + " - " + locations(endLocation); ...
    sprintf("%g km", distance); ...
    sprintf("%s-Flight", flightTypes(isFlightShort + 1)); ...
    sprintf("%g kg", co2_emissions) ...
    ],'VariableNames',{' '},'RowName',{'Connection','Distance', 'Flighttype', 'CO2 Emissions per Person and Direction'});

disp(result_table)


