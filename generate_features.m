function [feat] = generate_features(aoa)
    % First get rid of leading zeros.
    thres = .15; % This threshold is arbitrarily set.
    start = 1;
    for i = 1:length(aoa)
        if abs(aoa(i) - aoa(1)) > thres
            start = i;
            break
        end
    end

    feat = [];
    for i = start:length(aoa)-1
        change = (aoa(i+1) - aoa(i));
        if abs(change) > pi % corrects the case where goes from close to -pi to just past pi or the other way around
            change = -change;
        end

        if isempty(feat) || change ~= feat(end)
            feat(end+1) = change;
        end
    end
end