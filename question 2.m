clc;
clear;
format long;

% Given coefficient
c = 489.06;

% Radius of the sphere
R = 6.5;

% Define the integrand in spherical coordinates
% I = 489.06 * rho^2
% dV = rho^2 * sin(phi)

f = @(rho,phi,theta) c .* rho.^4 .* sin(phi);

% Compute the triple integral
F = integral3(f,...
    0,R,...          % rho limits
    0,pi,...         % phi limits
    0,2*pi);         % theta limits

% Display result
fprintf('Total joint force = %.4f\n',F);