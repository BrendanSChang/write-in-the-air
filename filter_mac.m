function [h_mac, t_mac, aoa] = filter_mac(h, t, macs, mac_id)
    idx = strcmp(macs, mac_id);
    h_mac = h(idx,:);
    t_mac = t(idx);

    % distance set to 5in ~ .127m
    d = .127;
    % wavelength = speed of light / frequency, frequency = 5GHz
    w = .06;
    % phase difference (same as phase of channel ratio)
    pd = angle(h_mac(:,1)) - angle(h_mac(:,2));
    % aoa = arccos(w/(2*pi*d) * phase difference)
    aoa = acos(unwrap(pd)*w/(2*pi*d));
end