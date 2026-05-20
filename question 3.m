clc;
clear;
format long;

% Given coefficient
c = 243.51;

% Radius and height of cylinder
R = 3.5;
H = 8.5;

% Define the integrand in cylindrical coordinates
% P = 243.51 * r^2
% dV = r dr dtheta dz

f = @(r,theta,z) c .* r.^3;

% Compute the triple integral
F = integral3(f,...
    0,R,...          % r limits
    0,2*pi,...       % theta limits
    0,H);            % z limits

% Display result
fprintf('Total tendon stress = %.4f\n',F);