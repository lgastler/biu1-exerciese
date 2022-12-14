tests = [
         "A", "B", "8.00", 0;
         "C", "I", "1.60", 0;
         "D", "H", "8.00", 1;
         "F", "C", "9.60", 1;
         "B", "E", "3.20", 0;
         "F", "G", "4.80", 0;
         ];

for testIdx = 1:length(tests)
    startStation = tests(testIdx, 1);
    endStation = tests(testIdx, 2);
    resultPrice = double(tests(testIdx, 3));
    throughCenter = logical(str2num(tests(testIdx, 4)));

    actualPrice = determinePrice(startStation, endStation, throughCenter);

    fprintf("The result of %s and %s was %s \n", startStation, endStation, mat2str(areEssentiallyEqual(resultPrice, actualPrice)))
end
