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
    isThroughCenter = logical(str2double(tests(testIdx, 4)));

    actualPrice = determinePrice(startStation, endStation, isThroughCenter);
    isCorrectResult = areEssentiallyEqual(resultPrice, actualPrice);
    msgCorrectResult = "correct";

    if ~isCorrectResult
        msgCorrectResult = "incorrect";
    end

    fprintf("The result of %s and %s was EUR%.2f which is the %s result\n", startStation, endStation, actualPrice, msgCorrectResult);
end
