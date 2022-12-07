% define the known variables from the exercise
m = [5 0 0];
n = [2 2 0];
o = [3 3 5];
rho = 2.71;

% calculate the size and angle using m and n
A = norm(cross(m, n));
phi = acosd( ...
    dot(m, n) ...
    / ...
    (abs(norm(m)) * abs(norm(n))) ...
);

% calculate the volume and mass using m, n and o
V = dot(cross(m, n), o);
m = V * rho;
fprintf('Size A = %g m^2\nVolume V = %g m^3\nMass m = %g kg\n', A, V, m);
fprintf('Angle: %g°\n', phi);
