x= input('seed value: ');
var = x;
count =0;
while var > 0
    count=count+1;
    len=0;
    temp =var;
    while(temp >0)
        temp = floor(temp/10);
        len=len+1;
    end
    var=var^2;
    var = int2str(var);
    for i = 1:len*2-length(var)
        var = strcat('0',var);
    end
    lenv=length(var);
    lenv=floor(lenv/2);
    var_temp=var(lenv:lenv+floor(len/2));
    if(length(var_temp) ~= len)
        var_temp=var(lenv-(len-length(var_temp)):lenv+floor(len/2));
    end
    var = str2num(var_temp)
    dum=input('hlt');
end
