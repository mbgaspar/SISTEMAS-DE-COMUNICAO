function [t,x] = BNRZ(Rs,bits)

len = length(bits);
T = 1/Rs;
n=100;
N=n*len;
t=0:T/N:T;
x = zeros(1,length(t));

for i=0:len-1
   if bits(i+1)
       x(i*n+1:n*(i+1)) = 1;
   else
       x(i*n+1:n*(i+1))=-1;
   end
end