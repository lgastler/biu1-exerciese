startStop = input("Which station is your start stop? [A,B,C,D,E,F,G,H,I,J] ", "s");
endStop = input("Which station is your end stop? [A,B,C,D,E,F,G,H,I,J] ", "s");

travellingThroughCenter = input('Are you travelling through the city center? Y/N [Y]:', 's');

if isempty(travellingThroughCenter) || lower(strtrim(travellingThroughCenter)) == "y"
    travellingThroughCenter = true;
else
    travellingThroughCenter = false;
end

price = determinePrice(startStop, endStop, travellingThroughCenter);

% just out of interest the MATLAB way would be:
% fprintf("Your ticket will cose: EUR%.2f \n", price)
curr = java.text.NumberFormat.getCurrencyInstance();
fprintf("Your ticket will cost: %s \n", curr.format(price));
