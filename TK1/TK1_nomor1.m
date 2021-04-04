n = 100;

A = bmatrix(n);
b = x(n);
[L,U, counter] = bandedLU(A,3,3);

y = ForwardSolution(L, b);
yaprox = BackwardSolution(U, y)