[F,B]=uigetfile('*.dat');
fid=fopen([B F],'r');
[a,count]=fscanf(fid,'%g',[2,inf]);
fclose(fid);
x0=a(1,:);
y0=a(2,:);
x1=[40,200,217,150];
f=inline('a(1)+a(2)*exp(-((x-a(3))/a(4)).^2)','a','x');
a=lsqcurvefit(f,x1,x0,y0);
plot (x0,y0,'Color','r')
hold on
plot(x0,y0,['r','*'],'Markersize',2);
plot(x0,f(a,x0),'b');
w=(2*a(4))*(12/1000);
str=sprintf('Weight=%5.3f mm',w);
text(100,80,str);

%str2=sprintf('%5.3f ',a);
%text(100,100,str2);

%str3=sprintf('%5.3f ',x1);
%text(100,120,str3);



