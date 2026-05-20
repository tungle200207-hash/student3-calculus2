clc;
clear;
format long;

% Given function coefficient
c = 541.64;

% Define the integrand
f = @(x,y,z) c .* x.^6 .* y.^8 .* z.^7;

% Compute the triple integral
F = integral3(f,0,6,0,3,0,5);

% Display result
fprintf('Total muscle force = %.4f\n',F);
