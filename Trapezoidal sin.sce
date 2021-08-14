// Program to find integration by using Trapezoidal rule

clc
clear
close

printf('\n\n Name - Syeda Reeha Quasar \n Enrolment No. - 14114802719 \n Group - C7 \n\n')

deff ('y = f(x)', 'y = sin(x)')

x0 = 0
xn = %pi
n = 10
h = (xn - x0)/n
s = 0

for i = 1:n
    s = s + f(x0 + (i - 1)*h) + f(x0 + i * h)
end

integral = (h * s)/2

printf('\n The value of integral is = %g \n', integral)
