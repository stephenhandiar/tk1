% with LU Decomposition
% A = LU
% AX = b
% LUX = b
% Ly = b => Forward Substitution
% Ux = y => Backward Substitution


for k=1:11
  n = 10 * 2**k;

  A = bmatrix(n);
  b = x(n);
  [L,U, counter] = bandedLU(A,3,3);

  y = ForwardSolution(L, b);
  yaprox = BackwardSolution(U, y);

  yexact = exactsolution(n);
  condition_number = cond(A)
  error = yaprox(n)-yexact(n)
end
