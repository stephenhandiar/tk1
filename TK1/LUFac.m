function [L, U, counter] = LUFac(A);
   
   [n,n] = size(A);
   
   L = eye(n);
   counter = 0;
   
   for kolom=1:n-1
     for baris=kolom+1:n
       
     % cari kelipatan tiap baris
     m = A(baris, kolom) / A(kolom, kolom);
     counter = counter + 1;
     L(baris, kolom) = m;
     [temp, dim] = size(A(baris, :));
     A(baris,:) = A(baris,:) - m * A(kolom,:);
     counter = counter + dim + dim - 1;
     endfor
   endfor
   
   U = A;
 
 endfunction
