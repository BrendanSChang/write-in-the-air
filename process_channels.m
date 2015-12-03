function [h,t,mac]=process_channels(fn)
    preprocess(fn);
    csi = read_channel_trace('csi_tmp.txt');
    h= zeros(length(csi),2);
    t= zeros(length(csi),1);
    mac = cell(length(csi),1);
    for i=1:length(csi)
        if ~isempty(csi{i})
            sub =-26:25;
            m1 = angle(csi{i}.H(5:56,1));
            slope=regress(unwrap(m1),[sub', ones(length(sub),1)]);
            h(i,1)=mean(csi{i}.H(5:56,1).*exp(-1j*slope(1)*sub')); 
            mac{i} = csi{i}.src;
            m2 = angle(csi{i}.H(5:56,3));
            slope=regress(unwrap(m2),[sub', ones(length(sub),1)]);
            h(i,2)=mean(csi{i}.H(5:56,3).*exp(-1j*slope(1)*sub')); 

            t(i) = csi{i}.timestamp;

        else
            h(i,1)=0;
            h(i,2)=0;
            mac{i} = 0;
            t(i) = 0;
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