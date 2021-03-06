% Author: Max Lu
% Date: Nov 17

function [Yhat] = logistic(train_x, train_y, test_x, test_y)
    model = train(train_y, sparse(train_x), ['-s 0', 'col']);
    [Yhat] = predict(test_y, sparse(test_x), model, ['-q', 'col']);
end

