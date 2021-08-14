// Newton Raphson Method
clc
printf('\n\n Name - Syeda Reeha Quasar \n Enrolment No. - 14114802719 \n Group - C7 \n\n')

deff ('x = f(x)', 'x = cos(x) - x * exp(x)')
deff ('x = f1(x)', 'x = sin(x) - (x+1) * exp(x)')

x0 = 0.5; e = 0.00001;
printf(' n \t   xn \t\t f(xn) \t\t f1(xn) \t   xn+1 \t    Error \n\n')

for i = 1:4
    x1 = x0 - f(x0)/f1(x0)
    e1 = abs(x0 - x1)
    printf(' %i \t %10f \t %10f \t %10f \t %10f \t %10f \n', i-1, x0, f(x0), f1(x0), x1, e1)
    x0 = x1
    if e1 < e then
        break
    end
end

printf('\n\n The solution of this equation after %i Iterations is %10f', i, x1)
