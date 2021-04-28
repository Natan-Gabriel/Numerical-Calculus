% B)

interval=linspace(-5,5,100);
f= @(x) 1/(1+x*x);
fplot(f,[-5 5]);
hold on;

a = -5;
b = 5;

n=5;
numbers_from_1_to_5 = linspace(1,n,n)
interval_degree_4= arrayfun(@(x) 1/2 * cos((2*x-1)*pi/(2*n)) * (b-a) + a + b ,numbers_from_1_to_5);    %linspace(-5,5,15);
f4 = arrayfun(@(x) 1/(1+x*x),interval_degree_4);
res = lagrange_barycentric(interval_degree_4,f4,interval);
plot(interval,res);



n=9;
numbers_from_1_to_9 = linspace(1,n,n)
interval_degree_8= arrayfun(@(x) 1/2 * cos((2*x-1)*pi/(2*n)) * (b-a) + a + b ,numbers_from_1_to_9);    %linspace(-5,5,15);
f8 = arrayfun(@(x) 1/(1+x*x),interval_degree_8);
res = lagrange_barycentric(interval_degree_8,f8,interval);
plot(interval,res);


n=15;
numbers_from_1_to_15 = linspace(1,n,n)
interval_degree_14= arrayfun(@(x) 1/2 * cos((2*x-1)*pi/(2*n)) * (b-a) + a + b ,numbers_from_1_to_15);    %linspace(-5,5,15);
f14 = arrayfun(@(x) 1/(1+x*x),interval_degree_14);
res = lagrange_barycentric(interval_degree_14,f14,interval);
plot(interval,res);
