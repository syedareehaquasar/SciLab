m = input('Enter no. of rows of matrix')
n = input('Enter no. of columns of matrix')
A = zeros(m, n);
B = zeros(m, n);
disp('Enter elements of matrix row wise ')
for i = 1:m
    for j = 1:n
        A(i, j) = input('');
    end
end
for i = 1:n
    for j = 1:m
        B(i, j) = A(j, i);
    end
end
disp('The Matrix is ', A)
disp('The Transposed matrix is ', B)
