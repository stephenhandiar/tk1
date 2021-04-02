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
## @deftypefn {} {@var{retval} =} ForwardSolution (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Anggardha Febriano <anggardhafebriano@Anggardhas-MacBook-Pro.local>
## Created: 2021-04-01

function X = ForwardSolution (A, b)
[n,n] = size(A);
X = zeros(n,1);
X(1) = b(1)/A(1,1);
for i = 2:1:n % i starts at 2, end at 4, w/ steps of 1
  X(i) = (b(i)-A(i,1:i-1)*X(1:i-1))/A(i,i);
end
endfunction
