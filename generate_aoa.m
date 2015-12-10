function [aoa] = generate_aoa(fname)
    [h0, t0, mac0] = process_channels(fname)
    mac_id = ' b8:9:8a:e3:11:49';
    [~, ~, aoa] = filter_mac(h0, t0, mac0, mac_id);
    start = 1;
    thres = 0.15; %arbitrary
    for i = 1:length(aoa)
        if abs(aoa(i) - aoa(1)) > thres
            start = i;
            break
        end
    end
    aoa = aoa(start:end);
    fin = length(aoa);
    for i = length(aoa):-1:1
        if abs(aoa(i) - aoa(end)) > thres
            fin = i;
            break
        end
    end
    aoa = aoa(1:fin);
end