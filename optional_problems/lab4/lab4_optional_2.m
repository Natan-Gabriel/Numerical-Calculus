% A)

nodes=linspace(-1,1,10);
given_points = 0.5;

lebesque_function(nodes,given_points)


% B)

nodes=linspace(-1,1,10);
given_points = linspace(-1,1,200);

res = lebesque_function(nodes,given_points);

plot(given_points,res)
hold on


% C)

n=10;
numbers_from_1_to_n = linspace(1,n,n);
nodes = arrayfun(@(x) cos((2*x-1)*pi/(2*n)) ,numbers_from_1_to_n);    %linspace(-5,5,15);

given_points = linspace(-1,1,200);

res = lebesque_function(nodes,given_points);

plot(given_points,res);


% D)

numbers_from_1_to_n = linspace(1,n,n);
nodes = arrayfun(@(x) cos(x*pi/n) ,numbers_from_1_to_n) ;   %linspace(-5,5,15);

given_points = linspace(-1,1,200);

res = lebesque_function(nodes,given_points);

plot(given_points,res);




