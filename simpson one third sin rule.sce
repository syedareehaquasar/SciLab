// Program to find integration by using Simpson's 1/3 rule

clc
clear
close

deff ('y = f(x)', 'y = sin(x)')

x0 = 0
xn = %pi
n = 10
h = (xn - x0)/n
s = 0

for i = 1:2:n
    s = s + f(x0 + (i - 1)*h) + 4*f(x0 + i * h) + f(x0 + (i+1) * h)
end

integral = (h * s)/3

printf('\n The value of integral is = %g \n', integral)
