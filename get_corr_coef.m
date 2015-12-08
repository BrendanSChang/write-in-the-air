function [p] = get_corr_coef(feat0, feat1)
    if length(feat0) < length(feat1)
        cc = corrcoef(feat0, feat1(1:length(feat0)));
        p = cc(1, 2);
    else
        cc = corrcoef(feat1, feat0(1:length(feat1)));
        p = cc(1, 2);
    end
end