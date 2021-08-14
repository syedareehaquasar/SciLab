//Program to find mean,S.D. and first r moments about mean of given n pairs (x)
clc;clear;close;

clc

printf('\n\n Name - Syeda Reeha Quasar \n Enrolment No. - 14114802719 \n Group - C7 \n\n')

n = input('Enter the no.of pairs of values (x.f) to find the mean = ')
m = input('Enter the no. r = ')

disp('Enter the values of x : ')

for i = 1:n
    x(i) = input(' ')
end

disp('Enter the corresponding frequencies f : ')

for i=1:n
    f(i) = input(' ')
end

s = 0
s1 = 0

for i=1:n
    s = s + f(i) //Calculate the sum of all frequencies
    s1 = s1 + f(i)*x(i) // Calculate the sum of all f(i)x(i)
end

A = s1/s  //Calculate the average

printf('Average %g\n', A);

for j = 1:m
    s2 = 0
    for i=1:n
        y(i) = f(i)*(x(i)-A)^j
        s2 = s2 + y(i)
    end;
    M(j) = (s2/s) //Calculate the moments
    printf('Moment about mean M(%i) = %g\n', j, M(j))
end

sd = sqrt(M(2)) //Calculate the standard deviation

printf('Standard deviation = %g\n', sd);
