function y = diffeqn(a,x,y_init)
    shift = 11;
    Samples = length(x);
    y = zeros(1,Samples);
    y(shift + 1) = y_init;

    for n =  (shift+2) : shift+10 
         y(n) = a * y(n-1) + x(n);
    end

n = [-10:10];  % INdexing vector of the INPUT signal
shift = 1 - n(1);
x_n = zeros(1,length(n));
x_n(shift:shift+4) = [2 5 -1 4 -5]; % Taking as the INPUT signal
a = 1.2;  % scalar multiple 
y_b = 2;  % Y Initial Value
y = diffeqn(a,x_n,y_b);
stem(n,y)
xlabel('n');
ylabel('y[n]');
end



