%% Zeros
x1=-1;
x2=3;
X=x1:0.01:x2;
f=@sin;
x=fzero(f,[x1 x2]);
plot(X,f(X),'G--',x,f(x),...
    'R.','LineWidth',3,'MarkerSize',30);
grid on;
