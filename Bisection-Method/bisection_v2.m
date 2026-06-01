% Define the nonlinear function
f = @(x) x.^3 - x - 2;

% Search domain for automatic interval detection
domain = -10:1:10;
found = false;

% Locate an interval containing a sign change
for i = 1:length(domain)

    if f(domain(i))*f(domain(i+1))<0

        a = domain(i);
        b = domain(i+1);

        found = true;

        break
    end
end

% Stop execution if no valid interval is found
if ~found
    error('No sign changed detected in the search interval.')
end

% Display initial interval
fprintf('a=%d',a)
fprintf('b=%d',b)

% Convergence tolerance and iteration counter
tol = 1e-6;
iter = 0;

fprintf('Iter\t a\t\t b\t\t c\t\t')

% Perform Bisection Method iterations
while abs(b-a) > tol

    % Compute midpoint
    c = (a+b)/2;

    % Select subinterval containing the root
    if f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end

    % Update iteration count
    iter = iter + 1;

    % Display iteration results
    fprintf('%d\t %.6f\t %.6f\t %.6f\t \n', iter,a,b,c)

end

% Calculate final root approximation
root = (a+b)/2;

% Display final results
fprintf('Root = %.6f\n', root)
fprintf('Iterations = %d\n', iter)

% Generate data for function plot
x = 0:0.1:3;
figure

% Plot function curve
plot(x,f(x),LineWidth=2)
grid on
hold on

% Mark computed root on graph
plot(root,f(root),'ro',MarkerSize=10)

% Add graph labels and title
xlabel('x')
ylabel('f(x)')
title('Bisection Method Root')

