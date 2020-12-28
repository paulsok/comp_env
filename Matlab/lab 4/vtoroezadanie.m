var = 8;
while var>0
var = input('Номер дня недели ');
switch var
case {1} 
    disp('Понедельник')  
case {2}
    disp('Вторник')  
case {3} 
    disp('Среда')  
case {4} 
    disp('Четверг')  
case {5}
    disp ('Пятница')
case {6}
    disp ('Суббота')
case {7}
    disp ('Воскресенье')
otherwise 
    disp('Семь дней в неделе!!!');
if var<0 disp('Только положительные значения')
    break
    end
end
end