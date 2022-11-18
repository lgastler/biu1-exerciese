a = 1:11;
b = transpose(-50:+10:50);

c = a * b;
C = b * a;

% für a wäre auf jeden fall ein unsigned integer möglich, da nicht negativ
% also z.B. uint8

D = det(C);

C_inv = inv(C);

% Matrix nur invertierbar, wenn die Determinante ungleich 0 ist

C_rank = rank(C);


n = size(C, 1);
m = size(C, 2);

% size gibt die größe der Spalten-/Zeilen an wobei length die größere der
% beiden zurückgibt

M = magic(length(C));

d = sum(M, 1);
e = transpose(sum(M, 2));
f = trace(M);
s = sum(M, "all");

a_2 = linspace(1, 11, 11);
b_2 = linspace(-50, 50 ,10);