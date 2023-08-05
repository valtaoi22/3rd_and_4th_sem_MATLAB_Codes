clc;
clear all;
s=10;
H= zeros(s);
c=1;
while c<=s
    r=1;
    while r<=s
        H(r,c)=1/(r+c-1);
        r=r+1;
    end
    c=c+1;
end
H