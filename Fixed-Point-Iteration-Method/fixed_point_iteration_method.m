% Rearranging
% x^3 - x - 2 = 0
% x^3 = x + 2
% x = (x + 2)^(1/3)

% Define g(x)
g = @(x) (x + 2).^(1/3);

% Initial guess
x0 = input('Enter initial guess: ');

% Tolerance
tol = 1e-6;

iter = 0;

fprintf('Iteration\t x\n')

while true

    x1 = g(x0);

    iter = iter + 1;

    fprintf('%d\t\t %.8f\n', iter, x1)

    if abs(x1-x0) < tol
        break
    end

    x0 = x1;
end

fprintf('Iterations = %d\n',iter)
fprintf('Root = %.6f\n',x1)

% Graph
x = 0:0.01:3;

figure
plot(x, x, 'LineWidth', 2)
hold on
plot(x, g(x), 'LineWidth', 2)

grid on
legend('y = x', 'y = g(x)')
xlabel('x')
ylabel('y')
title('Fixed Point Iteration Method')