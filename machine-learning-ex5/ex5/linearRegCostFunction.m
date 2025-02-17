function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.

h = X * theta;
diff = h-y;
J = 1/(2*m) * (diff'*diff) + lambda/(2*m) * theta(2:end, 1)'*theta(2:end, 1);

grad = 1/m .* (X' * (h-y));
temp = theta;
temp(1) = 0;
grad = grad + lambda/m*temp;

% =========================================================================

grad = grad(:);

end
