%problem 1 a)
f= @(x) exp(-x^2);
printf("Problem 1 a) :\n");
res=rectangle(1,1.5,f)

%problem 1 b)
fplot(f,[1 1.5]);
hold on
plot([1 1 1.5  1.5], [0 feval(f,1.25) feval(f,1.25) 0 ],'r');
plot([1 1.5], [0 0],'r');


%problem 1 c)
printf("Problem 1 c) with n=150:\n");
res=repeated_rectangle(1,1.5,150,f);
fprintf('%f\n',res);

printf("Problem 1 c) with n=500:\n");
res=repeated_rectangle(1,1.5,500,f);
fprintf('%f\n',res);