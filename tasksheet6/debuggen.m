%2 Vektoren
a = [4 -2 0];
b = [3 2 0];

%Flaeche
A = norm(cross(a,b));
%Schwerpunkt
S = 0.5*(a+b);

%noch ein Vektor
c = [3 3 5];

%Volumen
V = det([a;b;c]);
%neuer Schwerpunkt
S = 0.5*(a+b+c);

%Dichte
rho = 1.0;
%Masse
m = rho*V;

%Erhoehen der Dichte
rho = rho+0.5;
%Neuberechnung der Masse
m = rho*V;

%Der Vektor a wird gekuerzt
a = 0.5*a;
%Neuberechnung der Flaeche
A = norm(cross(a,b));
%Neuberechnung des Volumens
V = det([a;b;c]);
%Neuberechnung des Schwerpunkts
S = 0.5*(a+b+c);
%Neuberechnung der Masse
m = rho*V;