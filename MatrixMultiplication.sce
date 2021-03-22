m = input('Enter no. of rows columns of first matrix')
n = input('Enter no. of columns of first matrix')
p = input('Enter no. of rows of second matrix')
q = input('Enter no. of columns of second matrix')
if n == p then
   disp('Matrices are confortable for multiplication')
else
    disp('Matrices are not confortable for multiplication')
    abort
end
A = zeros(m, n)
B = zeros(p, q)
C = zeros(m, q)
disp('Enter elements of first matrix row wise ')
for i = 1:m
    for j = 1:n
        A(i, j) = input('')
    end
end
disp('Enter elements of second matrix row wise ')
for i = 1:p
    for j = 1:q
        B(i, j) = input('')
    end
end
for i = 1:m
    for j = 1:q
        for k = 1:n
            C(i, j) = A(i, j) * B(k , j)
        end
    end
end
disp('First Matrix is ', A);
disp('Second Matrix is ', B);
disp('Product of the matrices is ', C);
