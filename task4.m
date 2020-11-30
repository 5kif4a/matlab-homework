% Напишите функцию spiral_diag_sum, 
% которая принимает нечетное положительное целое число n в качестве входных данных 
% и вычисляет сумму всех элементов в двух диагоналях спиральной матрицы n-by-n.

% https://www.geeksforgeeks.org/sum-diagonals-spiral-odd-order-square-matrix/

sum1 = spiral_sum(5);
sum2 = spiral_sum(10);
sum3 = spiral_sum(15);

disp([sum1 sum2 sum3])

function out = spiral_sum(n)
    A = 3:2:n;
    out = 1 + sum(4 * A .^ 2 - 6 * (A-1));
end