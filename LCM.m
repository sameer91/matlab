%xn = (a* x(n-1) + c) mod m
x1 = input('x1: ');
a = input('a: ');
c = input('c: ');
m = input('m: ');
temp = x1;
count = 2;
while (count < 50)
    temp = mod((a*temp + c),m);
    if( x1 == temp)
        break
    end
    disp('x');
    disp(temp);
    disp(count);
    count = count+1;
end