function [h, t, src, dst] = process_channels(fn)
    preprocess(fn);
    csi = read_channel_trace('csi_tmp.txt');
    h = zeros(length(csi),2);
    t = zeros(length(csi),1);
    src = cell(length(csi),1);
    dst = cell(length(csi),1);
    for i = 1:length(csi)
        sub = [-28:-22,-20:-8,-6:-1,1:6,8:20,22:28];
        if (~isempty(csi{i}))
            m1 = angle(csi{i}.H(5:56,1));
            slope = regress(unwrap(m1),[sub', ones(length(sub),1)]);
            h(i, 1) = mean(csi{i}.H(5:56,1).*exp(-1j*slope(1)*sub'));
            src{i} = csi{i}.src;
            dst{i} = csi{i}.dest;
            m2 = angle(csi{i}.H(5:56,3));
            slope = regress(unwrap(m2),[sub', ones(length(sub),1)]);
            h(i, 2) = mean(csi{i}.H(5:56,3).*exp(-1j*slope(1)*sub'));
            t(i) = csi{i}.timestamp;
        end
    end
end

function a= preprocess(fn)
    fid = fopen(fn);
    fout = fopen('csi_tmp.txt','w');
    fprintf(fout,'<csi_info>\n');
    str='';
    while(true)
        l = fgetl(fid);
        if(l==-1)
            break;
        end
        str = strcat(str,'\n',l);
        if(strcmp(l,'</packet>'))
            fprintf(fout,str);
            str='';
        end
    end
    a=1;
    fprintf(fout,'</csi_info>');   
    fclose(fout);
    fclose(fid);
end