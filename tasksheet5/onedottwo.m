g = [1;3;5];
h = [2;4;6];

% transpose h to make calculation possible
M = g * transpose(h);

% redefine M using the definition from the exercise sheet
M = [M, zeros(3); ones(3), magic(3)];

% remove the first row by setting it to []
M(1,:) = [];

% uses end and the access of M to set J
J = M(end - 1:end,end - 1:end);

% M(15) is equal to row 5 and column 3

% row * size(M, 1) + column * size(M, 2)
% where size(M, 1) is the amount of rows and size(M, 2) the size of columns
M_15 = M(15);


% check crossproduct implementation
if not(isequal(cross(g, h), crossproduct(g, h)))
    error("crossproduct not implemented right")
end

k2 = crossproduct(g, h);
k3 = cross(g, h);

% check scalarproduct implementation
if not(isequal(dot(g, h), scalarproduct(g, h)))
    error("scalarproduct not implemented right")
end

l2 = scalarproduct(g, h);
l3 = dot(g, h);

% Calculates the crossproduct of 2 matrices of dimension 3
%
% Inputs:
%    a: first matrix
%    b: first matrix
%
% Outputs:
%    res: result of crossproduct
function res= crossproduct(a,b)
    if length(a) ~= 3 || length(b) ~= 3
        error("crossproduct only works in r3")
    end
    res = [
        a(2)*b(3)-a(3)*b(2);
        a(3)*b(1)-a(1)*b(3);
        a(1)*b(2)-a(2)*b(1)
    ];
end

% Calculates the scalarproduct of 2 vectors
%
% Inputs:
%    a: first vector
%    b: first vector
%
% Outputs:
%    res: result of scalarproduct
function res = scalarproduct(a,b)
    if not(isvector(a)) || not(isvector(b))
        error("scalarproduct only supports vectors")
    end

    if length(a) ~= length(b)
        error("the vectors need to be of the same dimension")
    end

    res = 0;

    for i = 1:length(a)
        res = res + (a(i) * b(i));
    end
    
end