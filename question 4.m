
%  Density function: P(x,y,z) = 791.06*x*y*z
%  Transformation: 
%    x = (u + 3*v + w)/4
%    y = (u - v + w)/4
%    z = (u - v - 3*w)/4
%  Bounds: 0 <= u <= 4,  -1 <= v <= 3,  -1 <= w <= 6
fprintf('--- Question 4 ---\n');

syms u v w
X = (u + 3*v + w)/4;
Y = (u - v + w)/4;
Z = (u - v - 3*w)/4;

% Define the density in terms of transformed coordinates
P_trans = 791.06 * X * Y * Z;

% Compute the Jacobian Matrix and its Determinant
J = jacobian([X, Y, Z], [u, v, w]);
abs_det_J = abs(det(J));

% Integrate over the transformed region
Q4_ans = int(int(int(P_trans * abs_det_J, w, -1, 6), v, -1, 3), u, 0, 4);

fprintf('Total transformed force output (exact): %s\n', char(Q4_ans));
fprintf('Total transformed force output (rounded): %.4f\n\n', double(Q4_ans));