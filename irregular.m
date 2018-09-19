x = randi([0 5000],5,1);
y = randi([0 500],5,1);
figure;
for i = 1:5
    if(i<5)
        plot([x(i),x(i+1)],[y(i),y(i+1)]);
    else
        plot([x(i),x(1)],[y(i),y(1)]);
    end
    hold on
end