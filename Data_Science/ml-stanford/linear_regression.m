% read in the data
table_data = readtable("data.csv");
data = table2array(table_data);

% obtain X, y from data
X = data(:,1);
y = data(:,2);

% plot(X, y, 'o')

% expand X to include 1s
X_mod = [ones(length(X), 1) X];

% initialize theta
[m,w] = size(X_mod);
theta = zeros(1,w);

last_val = 100;
j_values = zeros(1, last_val);

% cost function
for i = 1:last_val
    [j, h] = costFunction(X_mod, y, m, theta);
    j_values(i) = j;
    
    % gradient descent
    alpha = 0.001;
    theta(1) = theta(1) - (alpha*(1/m) * sum(h - y));
    theta(2) = theta(2) - (alpha*(1/m) * transpose((h - y)) * X);

end

plot(j_values)