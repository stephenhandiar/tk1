## Copyright (C) 2021 Anggardha Febriano
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} bandedLU (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Anggardha Febriano <anggardhafebriano@Anggardhas-MacBook-Pro.local>
## Created: 2021-04-02

function [L,U, counter] = bandedLU(A,p,q)
  [n,n] = size(A);
  counter = 0;
  L = eye(n);
  for k = 1:n-1
    m = min(q+k,n); % Measure max row index that contains non zero value
    for i = k+1:m
      leftBand = min(i-1,q); % Measure bend length in the left side 
      rightBand = min(n-i,p); % Measure bend length in the right side
      maxlength = min(k+leftBand+rightBand,n); % Calculate max index for numbers that contained in the band area
      L(i,k) = A(i,k)/A(k,k);
      counter = counter + 1;
      A(i,k:maxlength) = A(i,k:maxlength) - L(i,k)*A(k,k:maxlength); % Only calculate the number that contained in the band area
      [temp, dim] = size(A(k,k:maxlength));
      counter = counter + dim + dim;
    endfor
  endfor
  U = A;
endfunction
