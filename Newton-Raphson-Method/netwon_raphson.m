% Define the nonlinear function and its derivative
f = @(x) x.^3 - x - 2;
df = @(x) 3*x.^2 - 1;

% Asks the user to Input Initial Guess
x0 = input('Enter initial guess: ');

% Tolerance
tol = 1e-6;

% Iteration Counter
iter = 0;

% Table
fprintf('Iteration\t x\n')

while true
    
    % This prevents division-by-zero issues.
    if abs(df(x0)) < 1e-10
        error('Derivative too small.')
    end

    x1 = x0 - f(x0)/df(x0);

    iter = iter + 1;

    fprintf('%d\t\t %.8f\n',iter,x1)

    if abs(x1-x0) < tol
        break;
    end

    x0 = x1;

end

% Display Iterations and Root Value
fprintf('iterations = %d\n', iter)
fprintf('Root = %.6f\n', x1)

% Plotting
x = 0:0.1:3;

plot(x,f(x),'r',LineWidth=2)
grid on
hold on

% Mark computed root on graph
plot(x1,f(x1),'bo',Markersize=10)

% Add graph labels and title
xlabel('x')
ylabel('f(x)')
title('Newton Raphson Root Value')

