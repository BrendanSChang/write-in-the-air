function [label] = get_label(h_aoa, v_aoa, Hor, Vert)
    closest_index = 0;
    smallest_dist = 1e7;
    for i = 0:9
        sum = 0; %or could take max 
        for j = 1:3
            ref_aoa = Vert{i+1,j};
            sum = sum + dtw(v_aoa, ref_aoa);
        end
        for j = 1:3
            ref_aoa = Hor{i+1,j};
            sum = sum + dtw(h_aoa, ref_aoa);
        end
        if sum < smallest_dist
            smallest_dist = sum;
            closest_index = i;
        end
    end
    label = closest_index;
end

