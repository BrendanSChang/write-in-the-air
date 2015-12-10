function [C1] = remove_outlier(C1)
    for i = 1:10
        aoa1 = C1{i,1};
        aoa2 = C1{i,2};
        aoa3 = C1{i,3};
        d1 = dtw(aoa1, aoa2);
        d2 = dtw(aoa3, aoa2);
        d3 = dtw(aoa1, aoa3);
        a1 = d1+d3;
        a2 = d1+d2;
        a3 = d2+d3;
        if a1 == max([a1,a2,a3])
            C1{i,1} = [];
        end
        if a2 == max([a1,a2,a3])
            C1{i,2} = [];
        end
        if a3 == max([a1,a2,a3])
            C1{i,3} = [];
        end
    end
end
            
        