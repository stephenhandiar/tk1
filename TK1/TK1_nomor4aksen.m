dy = @(x,h) (16*exactsolutionforx(x) -9*exactsolutionforx(x+h) + 8/3*exactsolutionforx(x+2*h) -1/4*exactsolutionforx(x+3*h))/h**4;
f= -480*0.3*0.03*9.81;
I= 0.3*(0.03**3)/12;
E= 1.3*10**10;
tresh = f/(E*I);

x_val= 0.2;
solution = abs(dy(x_val, 1) - tresh);
sprintf('solution: %f | h: %f', solution,1)
for k=1:100
  solution = abs(dy(x_val, 2^-k) - tresh);
  sprintf('solution: %f | h: %f', solution,2**(-k))
end