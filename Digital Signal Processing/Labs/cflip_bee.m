function y = cflip_bee(x, N)

% Check if length of x is less than N and append zeros if necessary
if length(x) < N
    x = [x, zeros(1, N-length(x))];
end

% Define index vector
indx = mod((0:N-1)+floor(N/2), N)+1;

% Perform circular flip using index vector
y = x(indx);
end