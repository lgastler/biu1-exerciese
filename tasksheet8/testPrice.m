tests = [
         "A", "B", "8.00";
         "C", "I", "1.60";
         "D", "H", "8.00";
         "F", "C", "9.60";
         "B", "E", "3.20";
         "F", "G", "4.80";
         ];

for testIdx = 1:length(tests)
    startStation = tests(testIdx, 1);
    endStation = tests(testIdx, 2);
    resultPrice = double(tests(testIdx, 3));

    actualPrice = determinePrice(startStation, endStation, false);

    fprintf("The result of %s and %s was %s \n", startStation, endStation, mat2str(areEssentiallyEqual(resultPrice, actualPrice)))
end
