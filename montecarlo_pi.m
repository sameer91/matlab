pi_sum = 0;
for i = 1:10
    x = rand(100000,1);
y = rand(100000,1);
%x=x-0.5
%y=y-0.5
distance = sqrt((x-0.5).^2+(y-0.5).^2);
in_point = distance <= 0.5;
out_point = distance > 0.5;
%plot(x(out_point),y(out_point))
%hold on
%plot(x(in_point),y(in_point))
pi_value = 4 * sum(in_point)/100000;
pi_sum = pi_sum + pi_value;
disp(pi_value)
end
pi_value = pi_sum/10
