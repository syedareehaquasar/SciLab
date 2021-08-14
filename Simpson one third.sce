// Program to find integration by using Simpson's 1/3 rule

clc
clear
close

printf('\n\n Name - Syeda Reeha Quasar \n Enrolment No. - 14114802719 \n Group - C7 \n\n')

deff ('y = f(x)', 'y = 1/(1 + x^2)')

x0 = 0
xn = 6
n = 6
h = (xn - x0)/n
s = 0

for i = 1:2:n
    s = s + f(x0 + (i - 1)*h) + 4*f(x0 + i * h) + f(x0 + (i+1) * h)
end

integral = (h * s)/3

printf('\n The value of integral is = %g \n', integral)
