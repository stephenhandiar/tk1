dy = @(x) 2*x + 15*x^4 + 5;
x_val = 4;
expected_differential_value = dy(x_val);


forward = abs(forwardDifference(x_val, 1) - expected_differential_value);
backward = abs(backwardDifference(x_val, 1) - expected_differential_value);
central = abs(centralDifference(x_val, 1) - expected_differential_value);
sprintf('forward: %f | backward: %f | central: %f | h: %f', forward, backward, central, 1)
for k=1:100
  forward = abs(forwardDifference(x_val, 2**(-k)) - expected_differential_value);
  backward = abs(backwardDifference(x_val, 2**(-k)) - expected_differential_value);
  central = abs(centralDifference(x_val, 2**(-k)) - expected_differential_value);
  sprintf('forward: %f | backward: %f | central: %f | h: %f', forward, backward, central,2**(-k))
end