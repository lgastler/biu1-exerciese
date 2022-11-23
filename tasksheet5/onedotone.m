% define needed variables
a = 1:11;
b = transpose(-50:+10:50);

c = a * b;
C = b * a;

% for a it would be possible to use a unsigned integer because it is never
% negativ f.e. uint8

D = det(C);

C_inv = inv(C);

% the matrix can only be inverted if det(M) is != 0

C_rank = rank(C);


n = size(C, 1);
m = size(C, 2);

% size gibt die größe der Spalten-/Zeilen an wobei length die größere der
% beiden zurückgibt

% size has the option to return the size of row and column as a two-element
% row vector, or the needed result row or column can be defined by the
% second optional argument

% length returns the length of a vector

M = magic(length(C));

d = sum(M, 1);
e = transpose(sum(M, 2));
f = trace(M);
s = sum(M, "all");

% linespace is a function which can create a set of numbers this is f.e.
% helpful if you need to plot some function
a_2 = linspace(1, 11, 11);
b_2 = linspace(-50, 50 ,10);