function [t,x] = PQNRZ(Rs,bits,A,tipo)

len = length(bits);
if(rem(len,2))
    bits(end+1)=0;
    len = length(bits);
end
T = 1/Rs;
n=100;
N=n*len;
t=0:T/N:T;
x = zeros(1,length(t));
% Polar quartenário gray
if(tipo == 'g'|| tipo == 'G')
    for i=0:2:len-2
       if bits(i+1) == 0 && bits(i+2) == 0
           x(i*n+1:n*(i+2)) = -1.5*A;
       elseif bits(i+1) == 0 && bits(i+2) == 1
           x(i*n+1:n*(i+2))= -0.5*A;
       elseif bits(i+1) == 1 && bits(i+2) == 1
           x(i*n+1:n*(i+2))= 0.5*A;
       else
           x(i*n+1:n*(i+2))= 1.5*A;
       end
    end
% Polar quartenário Natural
else
    for i=0:2:len-2
       if bits(i+1) == 0 && bits(i+2) == 0
           x(i*n+1:n*(i+2)) = -1.5*A;
       elseif bits(i+1) == 0 && bits(i+2) == 1
           x(i*n+1:n*(i+2))= -0.5*A;
       elseif bits(i+1) == 1 && bits(i+2) == 0
           x(i*n+1:n*(i+2))= 0.5*A;
       else
           x(i*n+1:n*(i+2))= 1.5*A;
       end
    end
end
