m = input('Enter no. of rows')
n = input('Enter no. of columns')
A = zeros(m, n)
B = zeros(m, n)
C = zeros(m, n)
disp('Enter elements of first matrix row wise ')
for i = 1:m
    for j = 1:n
        A(i, j) = input('')
    end
end
disp('Enter elements of second matrix row wise ')
for i = 1:m
    for j = 1:n
        B(i, j) = input('')
    end
end
for i = 1:m
    for j = 1:n
        C(i, j) = A(i, j) + B(i, j)
    end
end
disp('First Matrix is ', A);
disp('Second Matrix is ', B);
disp('Sum of the matrices is ', C);
