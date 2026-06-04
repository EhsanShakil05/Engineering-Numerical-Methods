% Define function
f = @(x) x.^3 - x - 2;

% Search range and step size
start_range = -10;
end_range = 10;
step = 0.1;

% Tolerance
tol = 1e-6;

% Automatic interval detection
found = false;

for x = start_range:step:end_range-step
    if f(x)*f(x+step) < 0
        a = x;
        b = x + step;
        found = true;
        break
    end
end

if ~found
    error('No sign change detected in the search interval.')
end

fprintf('Initial interval found: [%.4f, %.4f]\n', a, b)

% Iteration counter
iter = 0;

fprintf('Iteration\t a\t\t b\t\t c\n')

while true

    c = (a*f(b) - b*f(a))/(f(b) - f(a));

    iter = iter + 1;

    fprintf('%d\t\t %.6f\t %.6f\t %.6f\n', iter, a, b, c)

    if abs(f(c)) < tol
        break
    end

    if f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end

end

fprintf('Iterations = %d\n', iter)
fprintf('Root = %.6f\n', c)

% Plotting
x = 0:0.01:3;

figure
plot(x, f(x), 'LineWidth', 2)
grid on
hold on

plot(c, f(c), 'ro', 'MarkerSize', 10)

xlabel('x')
ylabel('f(x)')
title('False Position Method Root')