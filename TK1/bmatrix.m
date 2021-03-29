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
## @deftypefn {} {@var{retval} =} bmatrix (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: StephenHandiar24 <StephenHandiar24@LAPTOP-7HOIN5KT>
## Created: 2021-03-29

function M = bmatrix (n)
M =  diag(6*ones(1,n)) + diag(-4*ones(1,n-1),1) + diag(-4*ones(1,n-1),-1) + diag(1*ones(1, n-2), 2) + diag(1*ones(1, n-2), -2);
M(1,1)=16;
M(1,2)=-9;
M(1,3)=8/3;
M(1,4)=-1/4;
M(n,n)=72/17;
M(n,n-1)=-156/17;
M(n,n-2)=96/17;
M(n,n-3)=-12/17;
M(n-1,n)=-28/17;
M(n-1,n-1)=72/17;
M(n-1,n-2)=-60/17;
M(n-1,n-3)=16/17;
endfunction
