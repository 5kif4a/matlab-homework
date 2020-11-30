% Написать функцию poly_val, где р = poly_val(c0,c,х), 
% а c0 и x скаляры, c - это вектор, p - скаляр. 
% Если c - пустая матрица, то p = c0. 
% Если c - скаляр, то p = c0 + c*x. 
% В противном случае p равно многочлену,
% c0 + c(1)*x^1 + c(2)*x^2 + ... + c(n)*x^n 

p1 = poly_val(-17,[],5000);
p2 = poly_val(3.2,[3,-4,10],2.2);
p3 = poly_val(1,[1,1,1,1],10);

sprintf('p1 = %f\np2 = %f\np3 = %f', [p1, p2, p3])

function p = poly_val(c0, c, x)
    if isempty(c)
        p = c0;
    else
        p = c0 + power(x, 1:numel(c)) * c(:);
    end
end