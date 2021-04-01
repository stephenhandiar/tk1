function [L, U, p] = LUFacWPivot(A)
  
  [n,n] = size(A);
  p = 1:n;
  
  L = eye(n);
  
  for kolom=1:n-1
    [m,l] = max(abs(A(kolom:n, kolom)));
    % sesuaikan l karena tiap kolom ga dimulai dari baris 1, tapi dari baris ke k
    l += (kolom - 1);
    
    
    temp = A(l,:);
    A(l,:) = A(kolom, :);
    A(kolom, :) = temp;
      
    temp = p(l);
    p(l) = p(kolom);
    p(kolom) = temp;
      
    tmp = L(l, 1:kolom-1);
    L(l, 1:kolom-1) = L(kolom, 1:kolom-1);
    L(kolom, 1:kolom-1) = tmp;
    
    
    for baris=kolom+1:n
       
     % cari kelipatan tiap baris
     m = A(baris, kolom) / A(kolom, kolom);
     L(baris, kolom) = m;
     A(baris,:) = A(baris,:) - m * A(kolom,:);
    endfor
  endfor
  
  U = A;
endfunction
