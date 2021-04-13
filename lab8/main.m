f= @(x) 2/(1+x*x);
printf("Problem 1 with trapezium formula:\n");
res = trapezium(0,1,f)

interval=0:0.01:1;

fplot(f,[0 1]);
hold on
plot([0 0 1 1], [0 feval(f,0) feval(f,1) 0]);

printf("Problem 1 with simpson formula:\n");
res = simpson(0,1,f)


%problem 3
r=110;
p=75;
f= @(x) (1-(p/r)^2*sin(x))^(1/2);
printf("Problem 3 with n=10:\n");
res=1.01930501931*repeated_trapezium(0,2*pi,10,f)
printf("Problem 3 with n=30:\n");
res=1.01930501931*repeated_trapezium(0,2*pi,30,f)

%problem 4
% we need n=10 in order to obtain a precision of three decimals
f= @(x) x*log(x);
printf("Problem 4 with n=10:\n");
res=repeated_trapezium(1,2,10,f)

%problem 5
f= @(x) 1/(4+sin(20*x));
printf("Problem 5 with n=10:\n");
res=repeated_simpson(0,pi,10,f)
printf("Problem 5 with n=30:\n");
res=repeated_simpson(0,pi,30,f)

%problem 6
f= @(x) 2/sqrt(pi)*(exp(-x^2));
printf("Problem 6 with n=4:\n");
res=repeated_simpson(0,0.5,4,f)
printf("The error for problem 6 with n=4:\n");
err=abs(res- 0.520499)
printf("Problem 6 with n=10:\n");
res=repeated_simpson(0,0.5,10,f)
printf("The error for problem 6 with n=10:\n");
err=abs(res- 0.520499)















