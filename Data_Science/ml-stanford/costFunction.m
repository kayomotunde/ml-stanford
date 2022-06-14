function [j, h] = costFunction(X, y, m, theta)
    h = X * transpose(theta);
    j = (0.5 * 1/m)*sum((h - y).^2);
end