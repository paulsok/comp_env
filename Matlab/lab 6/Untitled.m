syms x;
[F,mes]=fopen('function.txt','at+');
x=1:0.2:5;
M=[x;sin(x)./x];
fprintf(F,'|x=%7.4f|y=%11.8f|\n',M);
fclose(F);