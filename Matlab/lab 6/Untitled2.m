[k,l]=uigetfile('*.*');
p=fopen([l k],'r')
[m n]=fscanf(p,'%f',[2,inf])
fclose(p);


