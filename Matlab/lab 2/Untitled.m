%-- 08.02.11 23:09 --%
%-- 09.02.11 21:33 --%
%-- 23.03.11 13:24 --%
subs(sin(x)/x,x,x1)
subs(sin(x)/x,x,2)
subs(sin(x)/x,2,2)
%-- 23.03.11 13:31 --%
25-6
%-- 23.03.11 13:32 --%
syms x x1 y
x1= 0:0.2:1;
y=sin(x)/x;
subs(y,x,x1)
z=1:100;
s=sum(z)
z=[4 5 6 3 5;4 5 4 2 7;4 3 5 2 5;6 3 5 6 3;4 3 5 6 2];
s=sum(z)
s=cumsum(z)
z=2:25;
p=prod(z)
z=[2 2 6;2 6 9;7 9 5];
p=prod(z)
p=cumprod(z)
syms x n;
y=sin(x)/x;
diff(y,x,5)
syms x;
limit(((1+1/x)^(1/x)),x,inf)
syms x;
syms x y n;
y=sin(x)/x;
z=taylor(y,x,0,5)
z=taylor(y,x,0,3)
