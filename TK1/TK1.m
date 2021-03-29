yaprox = bmatrix(10)\x(10);
yexact = exactsolution(10);
tb = 0.2*1:10;
yaprox(10)-yexact(10)
plot(tb,yaprox,'ro',tb,yexact)