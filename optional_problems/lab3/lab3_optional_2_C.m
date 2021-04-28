% C)

interval=linspace(-5,5,100);
f= @(x) 1/(1+x*x);
fplot(f,[-5 5]);
hold on;

a = -5;
b = 5;

n=5;
numbers_from_0_to_4 = linspace(0,n-1,n)
interval_degree_4= arrayfun(@(x) 1/2 * cos(x*pi/n) * (b-a) + a + b ,numbers_from_0_to_4);    %linspace(-5,5,15);
f4 = arrayfun(@(x) 1/(1+x*x),interval_degree_4);
res = lagrange_barycentric(interval_degree_4,f4,interval);
plot(interval,res);



n=9;
numbers_from_0_to_8 = linspace(0,n-1,n)
interval_degree_8= arrayfun(@(x) 1/2 * cos(x*pi/n) * (b-a) + a + b ,numbers_from_0_to_8);    %linspace(-5,5,15);
f8 = arrayfun(@(x) 1/(1+x*x),interval_degree_8);
res = lagrange_barycentric(interval_degree_8,f8,interval);
plot(interval,res);


n=15;
numbers_from_0_to_14 = linspace(0,n-1,n)
interval_degree_14= arrayfun(@(x) 1/2 * cos(x*pi/n) * (b-a) + a + b ,numbers_from_0_to_14);    %linspace(-5,5,15);
f14 = arrayfun(@(x) 1/(1+x*x),interval_degree_14);
res = lagrange_barycentric(interval_degree_14,f14,interval);
plot(interval,res);
