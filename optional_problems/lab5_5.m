
% A)
A= [1 1.05];
B=arrayfun(@(x) 3*x*exp(x)-exp(2*x), A);
C=arrayfun(@(x) 3*x*exp(x)+3*exp(x)-2*exp(2*x), A);

x = [1.03];

Hf = hermite_interpolation(A,B,C,x)

printf("the absolute error is %f\n",abs(Hf-(3*1.03*exp(1.03)-exp(2*1.03))))

% will be used at C)
interval = 0.5:0.001:1.5;
Hf_a = hermite_interpolation(A,B,C,interval);




% B)
A= [1 1.05 1.07];
B=arrayfun(@(x) 3*x*exp(x)-exp(2*x), A);
C=arrayfun(@(x) 3*x*exp(x)+3*exp(x)-2*exp(2*x), A);

x = [1.03];

Hf = hermite_interpolation(A,B,C,x)

printf("the absolute error is %f\n",abs(Hf-(3*1.03*exp(1.03)-exp(2*1.03))))

% will be used at C)
Hf_b = hermite_interpolation(A,B,C,interval);





% C) THEY OVERLAP
plot(interval,Hf_a,'r')
hold on;
plot(interval,Hf_b,'y')
orginial_points=arrayfun(@(x) 3*x*exp(x)-exp(2*x), interval);
plot(interval,orginial_points,'b')




