clc;
clear;
format long;

%% ========================================================================
%  1.5.3 Question 5: Force Cost Evaluation in a Tetrahedral System
%  ========================================================================
%  Integrand: 258.70*x + 369.81*y + z^2
%  Solid Tetrahedron E bounded by: x=0.1, y=0.4, z=0.3 and x+y+z=4
%  Integration limits:
%    z goes from 0.3 to 4 - x - y
%    y goes from 0.4 to 4 - 0.3 - x = 3.7 - x
%    x goes from 0.1 to 4 - 0.4 - 0.3 = 3.3
fprintf('--- Question 5 ---\n');

syms x y z
f_tetra = 258.70*x + 369.81*y + z^2;

% Outer bounds setup
z_upper = 4 - x - y;
y_upper = 4 - 0.3 - x;
x_upper = 4 - 0.4 - 0.3;

% Compute the triple integral sequentially
Q5_ans = int(int(int(f_tetra, z, 0.3, z_upper), y, 0.4, y_upper), x, 0.1, x_upper);

fprintf('Total tetrahedral force cost (exact): %s\n', char(Q5_ans));
fprintf('Total tetrahedral force cost (rounded): %.4f\n', double(Q5_ans));