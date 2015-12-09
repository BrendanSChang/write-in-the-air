function [d] = compare_aoa(aoa1, aoa2)
    diff = abs(length(aoa1) - length(aoa2));
    if length(aoa1)>length(aoa2)
        to_interp = linspace(1, length(aoa2), diff) + 0.1*rand;
        aoa2 = interp1(aoa2, to_interp);
    else
        to_interp = linspace(1, length(aoa1), diff);
        aoa1 = interp1(aoa1, to_interp);
    end
    d = dtw(aoa1, aoa2);
end