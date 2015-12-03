function [h_mac,t_mac] = filter_mac(h, t, macs, mac_id)
    idx = strcmp(macs, mac_id);
    h_mac = h(idx,:);
    t_mac = t(idx);
    dims = size(h_mac);
    a = eye(dims(1), 1);
    for i = 1:dims(1)
        a(i) = angle(h_mac(i, 1)/h_mac(i, 2));
    end
    plot(t_mac, a);
    % plot(t_mac, asin(unwrap(angle(h_mac(:,1)) - angle(h_mac(:,2)))/pi));
end
