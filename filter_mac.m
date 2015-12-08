function [h_mac,t_mac, aoa] = filter_mac(h, t, macs, mac_id)
    idx = strcmp(macs, mac_id);
    h_mac = h(idx,:);
    t_mac = t(idx);
    dims = size(h_mac);
    a = eye(dims(1), 1);
    for i = 1:dims(1)
        a(i) = angle(h_mac(i, 1)/h_mac(i, 2));
    end
    plot(t_mac, a);
    aoa = asin(unwrap(angle(h_mac(:,1)) - angle(h_mac(:,2)))/pi);
    plot(t_mac, aoa);
end

function [feats] = generate_features(aoa)
    feat = []
    for i= 1:length(aoa)-1
        change = (aoa(i+1) - aoa(i));
        if abs(change) > pi %corrects the case where goes from close to -pi to just past pi or the other way around
            change = -change;
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
