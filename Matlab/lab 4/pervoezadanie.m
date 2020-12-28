V=20:70;
for i=1:17
    j=round(rand*(50-i)+1);
    m(i)=V(j);
    V(j)=[];  
end
disp(m)
    