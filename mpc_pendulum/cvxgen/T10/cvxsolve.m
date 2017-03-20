% Produced by CVXGEN, 2017-03-20 02:49:27 -0400.
% CVXGEN is Copyright (C) 2006-2012 Jacob Mattingley, jem@cvxgen.com.
% The code in this file is Copyright (C) 2006-2012 Jacob Mattingley.
% CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial
% applications without prior written permission from Jacob Mattingley.

% Filename: cvxsolve.m.
% Description: Solution file, via cvx, for use with sample.m.
function [vars, status] = cvxsolve(params, settings)
A = params.A;
B = params.B;
Q = params.Q;
QN = params.QN;
R = params.R;
u_max = params.u_max;
x_0 = params.x_0;
x_max = params.x_max;
cvx_begin
  % Caution: automatically generated by cvxgen. May be incorrect.
  variable u_0;
  variable x_1(4, 1);
  variable u_1;
  variable x_2(4, 1);
  variable u_2;
  variable x_3(4, 1);
  variable u_3;
  variable x_4(4, 1);
  variable u_4;
  variable x_5(4, 1);
  variable u_5;
  variable x_6(4, 1);
  variable u_6;
  variable x_7(4, 1);
  variable u_7;
  variable x_8(4, 1);
  variable u_8;
  variable x_9(4, 1);
  variable u_9;
  variable x_10(4, 1);
  variable u_10;
  variable x_11(4, 1);

  minimize(quad_form(x_0, Q) + quad_form(u_0, R) + quad_form(x_1, Q) + quad_form(u_1, R) + quad_form(x_2, Q) + quad_form(u_2, R) + quad_form(x_3, Q) + quad_form(u_3, R) + quad_form(x_4, Q) + quad_form(u_4, R) + quad_form(x_5, Q) + quad_form(u_5, R) + quad_form(x_6, Q) + quad_form(u_6, R) + quad_form(x_7, Q) + quad_form(u_7, R) + quad_form(x_8, Q) + quad_form(u_8, R) + quad_form(x_9, Q) + quad_form(u_9, R) + quad_form(x_10, Q) + quad_form(u_10, R) + quad_form(x_11, QN));
  subject to
    x_1 == A*x_0 + B*u_0;
    x_2 == A*x_1 + B*u_1;
    x_3 == A*x_2 + B*u_2;
    x_4 == A*x_3 + B*u_3;
    x_5 == A*x_4 + B*u_4;
    x_6 == A*x_5 + B*u_5;
    x_7 == A*x_6 + B*u_6;
    x_8 == A*x_7 + B*u_7;
    x_9 == A*x_8 + B*u_8;
    x_10 == A*x_9 + B*u_9;
    x_11 == A*x_10 + B*u_10;
    abs(x_1) <= x_max;
    abs(x_2) <= x_max;
    abs(x_3) <= x_max;
    abs(x_4) <= x_max;
    abs(x_5) <= x_max;
    abs(x_6) <= x_max;
    abs(x_7) <= x_max;
    abs(x_8) <= x_max;
    abs(x_9) <= x_max;
    abs(x_10) <= x_max;
    abs(x_11) <= x_max;
    abs(u_0) <= u_max;
    abs(u_1) <= u_max;
    abs(u_2) <= u_max;
    abs(u_3) <= u_max;
    abs(u_4) <= u_max;
    abs(u_5) <= u_max;
    abs(u_6) <= u_max;
    abs(u_7) <= u_max;
    abs(u_8) <= u_max;
    abs(u_9) <= u_max;
    abs(u_10) <= u_max;
cvx_end
vars.u_0 = u_0;
vars.u_1 = u_1;
vars.u{1} = u_1;
vars.u_2 = u_2;
vars.u{2} = u_2;
vars.u_3 = u_3;
vars.u{3} = u_3;
vars.u_4 = u_4;
vars.u{4} = u_4;
vars.u_5 = u_5;
vars.u{5} = u_5;
vars.u_6 = u_6;
vars.u{6} = u_6;
vars.u_7 = u_7;
vars.u{7} = u_7;
vars.u_8 = u_8;
vars.u{8} = u_8;
vars.u_9 = u_9;
vars.u{9} = u_9;
vars.u_10 = u_10;
vars.u{10} = u_10;
vars.x_1 = x_1;
vars.x{1} = x_1;
vars.x_2 = x_2;
vars.x{2} = x_2;
vars.x_3 = x_3;
vars.x{3} = x_3;
vars.x_4 = x_4;
vars.x{4} = x_4;
vars.x_5 = x_5;
vars.x{5} = x_5;
vars.x_6 = x_6;
vars.x{6} = x_6;
vars.x_7 = x_7;
vars.x{7} = x_7;
vars.x_8 = x_8;
vars.x{8} = x_8;
vars.x_9 = x_9;
vars.x{9} = x_9;
vars.x_10 = x_10;
vars.x{10} = x_10;
vars.x_11 = x_11;
vars.x{11} = x_11;
status.cvx_status = cvx_status;
% Provide a drop-in replacement for csolve.
status.optval = cvx_optval;
status.converged = strcmp(cvx_status, 'Solved');