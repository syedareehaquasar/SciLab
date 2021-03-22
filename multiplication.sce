function [C] = multiplication(m, n, p, q, A, B)
    C = zeros(m, n)
    if n == p then
        disp('Matrices are confortable for multiplication')
    else
        disp('Matrices are not confortable for multiplication')
        abort
    end
    C = A * B
    disp('First Matrix is ', A);
    disp('Second Matrix is ', B);
    disp('Product of the matrices is ')
endfunction
