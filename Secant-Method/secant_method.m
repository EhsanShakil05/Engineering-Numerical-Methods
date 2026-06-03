% Define the nonlinear function
f = @(x) x.^3 - x - 2;

% Initial Guesses
x0 = input('Enter Initial Guess 1: ');
x1 = input('Enter Initial Guess 2: ');

% Tolerance
tol = 1e-6;

% Counter
iter = 0;

% Store iterations
history = [];

fprintf('Iterations\t x\n')

while true

    if abs(f(x1)-f(x0)) < 1e-10
        error('Denominator too small.')
    end
    
    x2 = x1 - f(x1)*(x1-x0)/(f(x1)-f(x0));

    iter = iter + 1;

    history(end+1) = x2;

    fprintf('%d\t\t %.8f\n', iter, x2)

    if abs(x2-x1)<tol
        break;
    end

    x0 = x1;
    x1 = x2;

end

fprintf('Iterations = %d\n', iter)
fprintf('Root = %.6f\n', x2)

figure

plot(1:length(history), history, '-o', 'LineWidth', 2, 'MarkerSize', 8)
grid on

xlabel('Iteration Number')
ylabel('Approximate Root Value')
title('Secant Method Iteration Convergence')

for i = 1:length(history)
    text(i, history(i), sprintf('  x_%d', i))
end

figure

x = 0:0.01:3;
plot(x, f(x), 'b', 'LineWidth', 2)
hold on
grid on

xline(0, 'k', 'LineWidth', 1.5)
yline(0, 'k', 'LineWidth', 1.5)

plot(x2, f(x2), 'ro', 'MarkerSize', 10, 'LineWidth', 2)
text(x2+0.05, f(x2)+0.5, 'Root')

xlabel('x')
ylabel('f(x)')
title('Secant Method Root Finding')
legend('f(x)=x^3-x-2', 'x-axis', 'y-axis', 'Root')