function [label] = get_label(aoa)
    %load 0-9 aoa matrices from training data
    matrices = [];
    closest_index = 0;
    closest_dist = 1e7;
    for i = 0:9
        mat = matrices(i+1);
        num_row = size(mat,1);
        sum = 0;
        for j = 1:num_row
            sum = sum + compare(mat(j,:), aoa);
        end
        sum = sum / num_row;
        if sum < closest_dist
            closest_dist = sum;
            closest_index = i
        end
    end
    label = closest_index;
end

function [d] = compare(aoa1, aoa2)
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