function [aoa] = generate_aoa(fname)
    [h0, t0, mac0] = process_channels(fname)
    mac_id = ' b8:9:8a:e3:11:49';
    [~, ~, aoa] = filter_mac(h0, t0, mac0, mac_id);
end

    

