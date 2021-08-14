% bc: Matlab Function M.file that specifies boundary conditions
% for a PDE in time and one space dimension

function [p1, q1, pr, qr] = bc(x1, u1, xr, ur, t)
p1 = u1;
q1 = 0;
pr = ur-1;
qr = 0;
end