function z = triangle(initial_p, n)

% Constants
a = initial_p(2);

% Generate point sequence
z = [initial_p(1); initial_p(3)];
for k = 1:n
    z = [z+initial_p(1); z+a; z+initial_p(3)]/2;
end

% Close triangle
z = [z; a; initial_p(1)];
