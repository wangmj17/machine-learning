function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

% Iterations
for iter = 1:num_iters

    thetaold = theta;
    for j=1:length(theta)
        theta(j) = theta(j) - sum((X*thetaold-y).*X(:,j))*alpha/m;
    end 

% Save the cost J in every iteration    
J_history(iter) = computeCostMulti(X, y, theta);

end

end
