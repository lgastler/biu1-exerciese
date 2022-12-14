function zone = determineZone(stop)
    stop = lower(strtrim(stop));

    switch stop
        case 'b'
            zone = 1;
            return
        case 'e'
            zone = 2;
            return
        case {'d', 'f', 'h'}
            zone = 3;
            return
        case {'c', 'i'}
            zone = 4;
            return
        case {'a', 'g', 'j'}
            zone = 5;
            return
        otherwise
            zone = NaN;
            return
    end

end
