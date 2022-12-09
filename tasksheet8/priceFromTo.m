function price = priceFromTo(zoneFrom, zoneTo)
    zoneSmall = min(zoneFrom, zoneTo);
    zoneLarge = max(zoneFrom, zoneTo);

    % we add 1 to the zone difference because we need to add 1 zone where the ride started
    price = double(1.6 * (zoneLarge - zoneSmall + 1));
end
