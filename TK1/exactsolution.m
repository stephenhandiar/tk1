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
## @deftypefn {} {@var{retval} =} exactsolution (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: StephenHandiar24 <StephenHandiar24@LAPTOP-7HOIN5KT>
## Created: 2021-03-29

function result = exactsolution (n)
f= -480*0.3*0.03*9.81;
I=0.3*(0.03**3)/12;
E=1.3*10**10;
L=2;
penambah=2/n;
result = zeros(n,1);
for j=1:n
  x=penambah*j;
  result(j)=(f/(24*E*I))*(x**2)*((x**2)-4*L*x+6*(L**2));
end
endfunction
