function [B] = transpose(m, n, A)
    B = zeros(m, n);
    B = A';
    disp('The marix is ', A)
    disp('Transposed matrix is ')
endfunction
