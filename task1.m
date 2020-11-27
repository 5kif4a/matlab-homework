% Напишите функцию holiday, которая принимает два входных аргумента month и day; 
% оба являются скалярными целыми числами, представляющими месяц (1-12) и день (1-31). 
% Вам не нужно проверять, что входные данные действительны.
% Функция возвращает логическое значение true, если указанная дата является праздничной; если нет, то возвращает значение false. 
% Для целей настоящего упражнения праздниками считаются следующие даты: 1 января, 4 июля, 25 декабря и 31 декабря

day = input('Enter day:');
month = input('Enter month:');

is_holiday = holiday(day, month);

fprintf("Is the date entered a holiday?: %d", is_holiday);

function h = holiday(day, month)
    Days = 1:1:31;      % Дни месяца
    
    Months = 1:1:12;    % Месяца
    
    % Праздничные дни
    holidays = [1 1; 
                4 7; 
                25 12; 
                31 12];  
   
    % Валидация
    in_days = ismember(day, Days);
    in_months = ismember(month, Months);
    
    % Дата
    date = [day, month];
    
    % Проверка даты, что это праздничная дата
    is_holiday = ismember(date, holidays, 'rows');
    
    h = all([in_days, in_months, is_holiday]);
end