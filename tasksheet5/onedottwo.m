g = [1;3;5];
h = [2;4;6];

M = g * transpose(h);

M = [M, zeros(3); ones(3), magic(3)];

% remove the first row by setting it to []
M(1,:) = [];

J = M(end - 1:end,end - 1:end);

% M(15) entspricht Zeile 5 & Spalte 3
M_15 = M(15);

% zeile * size(M, 1) + spalte * size(M, 2)


if not(isequal(cross(g, h), kreuzprodukt(g, h)))
    error("kreuzprodukt not implemented right")
end

k2 = kreuzprodukt(g, h);
k3 = cross(g, h);

if not(isequal(dot(g, h), skalarprodukt(g, h)))
    error("kreuzprodukt not implemented right")
end

l2 = skalarprodukt(g, h);
l3 = dot(g, h);

function res= kreuzprodukt(a,b)
    if length(a) ~= 3 || length(b) ~= 3
        error("kreuzprodukt funktioniert nur im r3")
    end
    res = [
        a(2)*b(3)-a(3)*b(2);
        a(3)*b(1)-a(1)*b(3);
        a(1)*b(2)-a(2)*b(1)
    ];
end

function res = skalarprodukt(a,b)
    if not(isvector(a)) || not(isvector(b))
        error("skalarprodukt unterstützt nur vektoren")
    end

    if length(a) ~= length(b)
        error("vektoren müssen gleiche dimension haben")
    end

    res = 0;

    for i = 1:length(a)
        res = res + (a(i) * b(i));
    end
    
end