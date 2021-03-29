n = 4
A = rand(n,n)
U = triu(A)
b = rand(n,1)
x = zeros(n,1)

# Ux = b
x(n,1) = b(n)/U(n,n);
for i=n-1:-1:1
  x(i,1) = (b(i) - U(i,i+1:n)*x(i+1:n,1))/U(i,i);
end

error = norm(U*x-b,-inf)