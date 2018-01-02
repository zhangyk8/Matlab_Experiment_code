function z = hilbert(n)

% Constants
a = 1 + 1i;
b = 1 - 1i;

% Generate point sequence
z = 0;
for k = 1:n
    w = 1i*conj(z);
    z = [w-a; z-b; z+a; b-w]/2;
end

