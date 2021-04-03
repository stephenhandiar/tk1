% with LU Decomposition
% A = LU
% AX = b
% LUX = b
% Ly = b => Forward Substitution
% Ux = y => Backward Substitution


for k=1:3
  n = 10 * 2**k;

  A = bmatrix(n);
  b = x(n);
  [L,U, counter] = bandedLU(A,3,3);

  y = ForwardSolution(L, b);
  yaprox = BackwardSolution(U, y);

  yexact = exactsolution(n);
  tb = 0.2*1:n;
  yaprox(n)-yexact(n)
end
