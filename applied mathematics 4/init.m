% initial conditions: matlab function m.file that specifies the initial
% condtitions for a PDE in time and one dimension

function value = init(x)
value = 2*x/(1 + x.^2);
end