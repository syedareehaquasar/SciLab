clc;
disp("Enter the matrix row wise");
for i = 1:2
    for j = 1:2
        A(i,j) = input('/');
    end
end
trce = A(1, 1) + A(2, 2);
determinant = A(1, 1) * A(2, 2) - A(1, 2) * A(2, 1);
disp("The Characterstic Equation is: ");
disp(['e^2 + ' + string(-trce) + '*e + ' + string(determinant) + ' = 0']);
e1 = (trce + sqrt(trce^2 - 4 * determinant))/2;
e2 = (trce - sqrt(trce^2 - 4 * determinant))/2;
if A(1, 2) ~= 0 then
    v1 = [A(1, 2); e1 - A(1, 1)];
    v2 = [A(1, 2); e2 - A(1, 1)];
elseif A(2, 1) ~= 0 then
    v1 = [e1 - A(2, 2); A(2, 1)];
    v2 = [e2 - A(2, 2); A(2, 1)];
else
    v1 = [1; 0];
    v2 = [0; 1];
end
disp("First Eigen value is: ", e1);
disp("First Eigen vector is: ", v1);
disp("Second Eigen value is: ", e2);
disp("Second Eigen vector is: ", v2);
