f= @(x) 100/(x^2)*sin(10/x);
fplot(f,[1 3]);
printf("Problem 3 with adaptive Simpson:\n");
res=adaptive_simpson(1,3,10^(-4),f)

printf("Problem 3 with repeated Simpson and n=50:\n");
repeated_simpson(1,3,50,f)
printf("Problem 3 with repeated Simpson and n=100:\n");
repeated_simpson(1,3,100,f)