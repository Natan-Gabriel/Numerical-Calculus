%Problem 1

f= @(x) x - cos(x);
printf("Problem 1 :\n");
res=newton(100,pi/4,f,0.0001)
printf("\n");

%Problem 2

f= @(x) x - 0.8*sin(x) - (2*pi)/10;
printf("Problem 2 :\n");
res=kepler_with_newton(1,f)
printf("\n");

%Problem 3

f= @(x) x^3 - x^2 - 1;
printf("Problem 3 :\n");
res=secant(100,1,2,f,0.0001)
printf("\n");

%Problem 4 a)

f= @(x) (x - 2)^2 - log(x);
printf("Problem 4 with bisection method:\n");
res=bisection(100,1,2,f,0.0001)
printf("\n");

%Problem 4 b)

f= @(x) (x - 2)^2 - log(x);
printf("Problem 4 with false position method:\n");
res=false_position(100,1,2,f,0.0001)
printf("\n");
