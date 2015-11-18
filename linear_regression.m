function [Yhat] = linear_regression(X,Y,testX)

Wmap = inv(X'*X+eye(size(X,2))*1e-4) * (X')* Y;
Yhat = sigmf(testX*Wmap, [2 0])>0.5;



