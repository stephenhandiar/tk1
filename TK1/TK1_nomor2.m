n = 100;

A = bmatrix(n);
b = x(n);
[L,U, counter] = bandedLU(A,3,3);

y = ForwardSolution(L, b);
yaprox = BackwardSolution(U, y);
yexact = exactsolution(n);
tb = (2/n)*(1:n);
yaprox(n)-yexact(n)
plot(tb,yaprox,'ro',tb,yexact)