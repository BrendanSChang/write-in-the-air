function [feat] = generate_features(aoa)
    % Get rid of leading and trailing zeros using an arbitrary threshold.
    thres = .15;
    start = 1;
    for i = 1:length(aoa)
        if abs(aoa(i) - aoa(1)) > thres
            start = i;
            break
        end
    end

    fin = length(aoa);
    for i = length(aoa):-1:1
        if abs(aoa(i) - aoa(end)) > thres
            fin = i;
            break
        end
    end
    
    feat = [];
    for i = start:fin-1
        change = (aoa(i+1) - aoa(i));
        if abs(change) > pi % corrects the case where goes from close to -pi to just past pi or the other way around
            change = -change;
        end

        if isempty(feat) || change ~= feat(end)
            feat(end+1) = change;
        end
    end
end