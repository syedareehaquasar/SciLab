clc; clear; close;

printf('\n\n Name - Syeda Reeha Quasar \n Enrolment No. - 14114802719 \n Group - C7 \n\n')

deff ('z = f(x,y)','z = (y-x)/(y+x)')

x0 = 0;
y0 = 1;
xn = 0.1;
h = 0.02;
x = x0;
y = y0;

while x ~= xn
    y = y + h * f(x,y);
    x=x+h;

printf("\n When x = %g, y = %g\n" ,x ,y)

end
