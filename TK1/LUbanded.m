## Copyright (C) 2021 StephenHandiar24
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
## @deftypefn {} {@var{retval} =} LUbanded (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: StephenHandiar24 <StephenHandiar24@LAPTOP-7HOIN5KT>
## Created: 2021-03-29

function [L,U] = LUbanded(A)
[n,n]=size(A); %p
L=I; % matrik identitas
for k=1:n-1
  for i=k+1:min(k+3,n)
    L(i,k)=A(i,k)/A(k,k);
    for j=k+1:min(k+3,n)
      A(i,j)=A(i,j)-L(i,k)*A(k,j);
    end
  end
end
U=A;
endfunction
