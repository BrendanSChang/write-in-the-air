function [feat] = generate_features(aoa)
    feat = []
    last_val = 0;
    for i= 1:length(aoa)-1
        change = (aoa(i+1) - aoa(i));
        if abs(change) > pi %corrects the case where goes from close to -pi to just past pi or the other way around
            change = -change;
        end
        if abs(change) < pi/36
            
            continue
        end
        if change > 0
            change = 1;
        else
            change = -1;
        end
        if length(feat) ==0 | change ~= feat(end)
            feat(end+1) = change;
        end
    end
end