function mse_loss = mean_squared_loss(y_true, y_pred)
    % Calculate the Mean Squared Error (MSE) loss.

    % Ensure both y_true and y_pred have the same size
    assert(isequal(size(y_true), size(y_pred)), 'Size mismatch between y_true and y_pred.');

    % Calculate the MSE loss
    squared_errors = (y_true - y_pred) .^ 2;
    mse_loss = mean(squared_errors, 'all');
end
