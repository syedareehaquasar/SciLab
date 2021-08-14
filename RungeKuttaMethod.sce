clc; clear; close;

printf('\n\n Name - Syeda Reeha Quasar \n Enrolment No. - 14114802719 \n Group - C7 \n\n')

deff ('z = f(x,y)', 'z = x*x - y')

x0 = 0; y0 = 1; xn = 0.2; h=0.1;
x = x0;
y = y0;

while x ~= xn
    k1 = h * f(x,y);
    k2 = h * f(x+h/2, y+k1/2);
    k3 = h * f(x+h/2,y+k2/2);
    k4 = h * f(x+h, y+k3);
    k = (k1 + (k2 + k3) * 2 + k4)/6;
    x = x + h;
    y = y + k;
    printf("\n When x = %g, y = %g\n", x, y)
end
