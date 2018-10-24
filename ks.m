%%uniformity 
dalpha = 0.521
n=input('no. of random numbers:');
no = rand(1,n);
sort(no);
for i=1:n
    a(i)=i/n;
end
dplus=a-no;
for i=1:n
    dminus(i)=no-(i-1)/n
end    

