function price = determinePrice(startStop, endStop, travellingThroughCenter)
    startZone = determineZone(startStop);
    endZone = determineZone(endStop);

    if travellingThroughCenter
        price = priceFromTo(startZone, 1) + priceFromTo(1, endZone) - 1.60;
    else
        price = priceFromTo(startZone, endZone);
    end

end
