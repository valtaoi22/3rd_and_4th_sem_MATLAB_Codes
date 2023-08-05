clc;
clear all;
close all;

x=[1,2,3,4,5];
N=length(x);
sum=zeros(1,N);
for k=1:1:N
   for n=1:1:N
       sum(k)=sum(k)+(x(n)*exp((-j*2*pi*(n-1)*(k-1))/N));  %sum is y
   end
end

subplot(2,1,1)
 k=0:1:N-1;
stem(k,sum)
title('DFT magnitude Vaneet Singla 102015136')
xlabel('K')
ylabel('Magnitude')
%z=fft(x)    %inbulit command for dft

subplot(2,1,2)
stem(k,angle(sum))
title('DFT phase Vaneet Singla 102015136')
xlabel('K')
ylabel('Phase')
