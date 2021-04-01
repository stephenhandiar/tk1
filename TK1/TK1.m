% with LU Decomposition
% A = LU
% AX = b
% LUX = b
% Ly = b => Forward Substitution
% Ux = y => Backward Substitution
A = bmatrix(100);
b = x(100);
[L,U, counter] = LUFac(A);

counter

y = ForwardSolution(L, b);
yaprox = Solution(U, y);

% yaprox = bmatrix(10)\x(10);
yexact = exactsolution(100);
tb = 0.2*1:100;
yaprox(100)-yexact(100)
plot(tb,yaprox,'ro',tb,yexact)