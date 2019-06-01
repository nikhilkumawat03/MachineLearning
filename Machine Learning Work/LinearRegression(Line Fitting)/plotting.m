data = load('ex1data1.txt');
x = data(:, 1);
x1 = x;
y = data(:, 2);
m = size(y, 1);
theta = [0; 0];
alpha = 0.01;
x = [ones(m, 1) x];
iterations = 100;
#Now calculating h
scatter(x1, y);
hold on;
for i = 1:iterations,
    h = x * theta;
    error = h - y;
    delta = x' * error;
    theta = theta - (alpha/m)*delta;
    #fprintf('Theta is: %0.2f %0.2f \n', theta);
    ##J(i) = sum(((x * theta - y) .^ 2))/(2*m);
end
plot(x1, h, '-');
hold off;