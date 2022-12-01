function [t,x] = URZ(Rs,bits)

len = length(bits);
T = 1/Rs;
n=100;
N=n*len;
t=0:T/N:T;
x = zeros(1,length(t));

for i=0:len-1
   if bits(i+1)
       x(i*n+1:n*(i+0.5)) = 1;
       x((i+0.5)*n+1:(i+1)*n)=0;
   else
       x(i*n+1:n*(i+1))=0;
   end
end