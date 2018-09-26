ld = input('Arrival Rate: ');
mu = input('Service Rate: ');
c = input('No. of server: ');
N = input('Queue length: ');
n = input('No of tests to be simulated: ');
syms k x;
%single server inf queue length
if( N==0 && c==1)
    R=ld/mu;
    p0 = R-1;
    pm =(R^n)*p0;
    Ws = 1/(mu-ld);
    Wq = ld/(mu*(mu-ld));
    Ls = ld/(mu-ld);
    Lq = ld^2/(mu*(mu-ld));
end
%single server finite queue length
if(c==1 && N~=0)
    R=ld/mu;
    p0 = (1-R)/(1-R^(N+1));
    pm =(R^N)*p0;
    Ls = (R*(1+N*R^(N+1)-(N+1)*R^N))/((1-R)*(1-R^(N+1)));
    Lq = Ls - (1-p0);
    Ws = Lq/(Ls*(1-pm))+1/mu;
    Wq = Ws - 1/mu;
end
%multi server inf que length
if(c~=1 && N==0)
    R=ld/mu;
    p0 = 1/(symsum(R^k/factorial(k),k,0,c-1)+(R^c/(factorial(c)))*(c/(c-R)));
    Lq= (R^(c+1)/factorial(c-1)*(R-c)^2)*p0;
    Wq= Lq/ld;
    Ls= Lq+R;
    Ws=Ls/ld;
end
%multi server finite queue length
if(c~=0 && N~=0)
    R=ld/mu;    
    p0 = 1/(symsum(R^k/factorial(k),k,0,c-1)+R^c/(factorial(c))*((1-R/c)/(c-R)^2));
    pm = ((R^N)*p0)/(factorial(c)*c^(N-c));
    Lq = (R^(c+1)/factorial(c-1))*p0*((1-(R/c)^(N-c+1))-(1-R/c)^(N-c+1)*(R/c)^(N-c));
    Ls = Lq + R;
    Wq = Lq/(ld*(1-pm));
    Ws = Ls/(ld*(1-pm));
end
p0 = double(p0);
Lq =double(Lq);
Ls = double(Ls);
Wq = double(Ws);
Ws = double(Ws);

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