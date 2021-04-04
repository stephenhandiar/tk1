xaxis = 10*(1:50)
yaxis= zeros(50,1);
grow = zeros(49,1);
for k=1:50
  b = bmatrix(xaxis(1,k));
  [L,U,counter] = bandedLU(b,3,3);
  yaxis(k,1) = counter;

endfor
   
for k=2:100
  grow(k-1,1) = yaxis(k,1) / yaxis(k-1,1);
endfor

grow = 10000*grow;
plot(xaxis(1,2:50),grow', 'r-', xaxis(1,2:50),yaxis(2:50,1)');