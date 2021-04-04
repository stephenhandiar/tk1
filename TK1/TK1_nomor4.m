dy = @(x) 2*x + 15*x^4 + 5 ;
x_val = 4;
expected_differential_value = dy(x_val);
xval= zeros(101,1);

forward = abs(forwardDifference(x_val, 1) - expected_differential_value);
backward = abs(backwardDifference(x_val, 1) - expected_differential_value);
central = abs(centralDifference(x_val, 1) - expected_differential_value);
sprintf('forward: %f | backward: %f | central: %f | h: %f', forward, backward, central, 1)
xval(1,1) = central;
for k=1:100
  forward = abs(forwardDifference(x_val, 2**(-k)) - expected_differential_value);
  backward = abs(backwardDifference(x_val, 2**(-k)) - expected_differential_value);
  central = abs(centralDifference(x_val, 2**(-k)) - expected_differential_value);
  sprintf('forward: %f | backward: %f | central: %f | h: %f', forward, backward, central,2**(-k))
  xval(k+1,1) = central;
end
plot([1:101],xval')