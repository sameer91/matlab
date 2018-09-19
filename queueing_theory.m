ld = input('Arrival Rate: ');
mu = input('Service Rate: ');
c = input('No. of server: ');
N = input('Queue length: ');
n = input('No of tests to be simulated: ');
if( N==0 & c==1)
    R=ld/mu;
    p0 = R-1;
    pm =(R^n)*p0;
    Ws = 1/(mu-ld);
    Wq = ld/(mu*(mu-ld));
    Ls = ld/(mu-ld);
    Lq = ld^2/(mu*(mu-ld));
end
if(c==1 & N~=0)
    R=ld/mu;
    p0 = (1-R)/(1-R^(N+1));
    pm =(R^n)*p0;
    Ls = (R*(1+N*R^(N+1)-(N+1)*R^N))/((1-R)*(1-R^(N+1)));
    Lq = Ls - (1-p0);
%     p0 = 1/(symsum(R^k/factorial(k),k,0,c-1)+R^c/(factotial(c))*(c/(c-R)));
    
    
disp('Prob. 0 customre');
disp(p0);
disp('Avg queue length');
disp(Lq);
disp('Avg customer in system');
disp(Ls);
disp('Avg wait time in queue');
disp(Wq);
disp('Avg wait time in system');
disp(Ws);