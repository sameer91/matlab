x= input('seed value: ');
var = x;
count =0;
while var > 0
    count=count+1;
    len=0;
    len = int16(len);
    temp = int16(var);
    while(temp >0)
        temp = temp/10;
        len=len+1;
    end
    var=var^2;
    var = int2str(var);
    for i = 1:len*2-length(var)
        var = strcat('0',var);
    end
    lenv=length(var);
    lenv = int16(len);
    if(bitand(lenv,1))
        var=var(var/2-len/2,var/2+len-len/2)
    end        
    break;
end
