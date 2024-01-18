function [n1, y] = myconv(x, h, nx, nh)
% x is our INPUT signal
% h is the IMPULSE response
% nx is the vector index of the INPUT signal
% nh is the index vector for IMPULSE response

n1 = [nx(1) + nh(1) : nx(end) + nh(end)]; % n1 is the INDEX vector for OUTPUT signal

z = [];
for i=0:length(nx) - 1
   z = [z; zeros(1,i), h, zeros(1, length(nx) - i - 1)];
end

y = x * z;% output signal 
end

