function zone = determineZone(stop)
    stop = lower(strtrim(stop));

    switch stop
        case 'a'
            zone = 5;
            return
        case 'b'
            zone = 1;
            return
        case 'c'
            zone = 4;
            return
        case 'd'
            zone = 3;
            return
        case 'e'
            zone = 2;
            return
        case 'f'
            zone = 3;
            return
        case 'g'
            zone = 5;
            return
        case 'h'
            zone = 3;
            return
        case 'i'
            zone = 4;
            return
        case 'j'
            zone = 5;
            return
        otherwise
            zone = NaN;
            return
    end

end
