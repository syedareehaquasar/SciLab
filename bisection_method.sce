// Bisection method

clc
printf('\n\n Name - Syeda Reeha Quasar \n Enrolment No. - 14114802719 \n Group - C7 \n\n')

deff ('y = f(x)', 'y = x^3- 4*x -9')

x1 = 2; x2 = 3; e = 0.001; i = 0;
printf('Iteration \t x1 \t\t\t x2 \t\t\t z \t\t\t f(z) \n')

while abs(x1 - x2) > 2*e
    z = (x1 + x2)/2
    printf(' %i \t\t %f \t\t %f \t\t %f \t\t %f \n', i, x1, x2, z, f(z))
    if f(z) * f(x1) > 0 then
        x1 = z
    else
        x2 = z
    end
    i = i + 1
end

printf('\n\n The solution of this equation is %g after %i Iterations', z, i-1)
