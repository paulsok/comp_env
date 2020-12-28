y=solve('x^5-3*x^4+(a-b^3)*x^3+3*(b^3-a)*x^2-a*x*b^3+3*a*b^3=0')
x=0:0.2:5;
y=x.^10-1;
plot(x,y)
clc
y=2.^x-4*x;
plot(x,y)
y=roots([1 0 0 0 0 0 0 0 0 0 -1])
y=2.^x-4*x;
plot(x,y)
y=fzero('2.^x-4*x',[0,2])
y=fzero('2.^x-4*x',[3,5])
