
A = [3, 1, 7, -2 ; 2, 3, 1, 5; -1, 1, -5, 3 ; 1,1,1,1 ]
b = [18 ; 31; -2 ; 10]
res = gauss(4,A,b)

% PROBLEM 1

% A)

A = [10, 7, 8, 7 ; 7,5,6,5 ; 8,6,10,9 ; 7,5,9,10 ]
b = [32,23,33,31]
x = gauss(4,A,b)

c = cond(A);
printf("conditioning number:%f\n",c);


% B)

b_prim = [32.1,22.9,33.1,30.9]
x_prim = gauss(4,A,b_prim)



norm1 = norm(b-b_prim)/norm(b);
printf("input relative error, i.e. norm(b-b_prim)/norm(b):%f\n",norm1);

norm2 = norm(x-x_prim)/norm(x);
printf("output relative error, i.e. norm(x-x_prim)/norm(x):%f\n",norm2);

norm3 = norm2/norm1;
printf(" (norm(x-x_prim)/norm(x)) / (norm(b-b_prim)/norm(b)):%f\n",norm3);



% C)
A_1 = [10, 7, 8.1, 7.2 ; 7.08,5.04,6,5 ; 8,5.98,9.89,9 ; 6.99,4.99,9,9.98 ]
x_1 = gauss(4,A_1,b)

norm1 = norm(A-A_1)/norm(A);
printf("input relative error, i.e. norm(A-A_1)/norm(A):%f\n",norm1);

norm2 = norm(x-x_1)/norm(x);
printf("output relative error, i.e. norm(x-x_1)/norm(x):%f\n",norm2);

norm3 = norm2/norm1;
printf(" (norm(x-x_1)/norm(x)) / (norm(A-A_1)/norm(A)):%f\n",norm3);


% PROBLEM 2

for n=10:15
  c = cond(generate_hilbert_matrix(n));
  printf("conditioning number for the hilbert matrix with n = :%f is : %f\n",n,c);
endfor


% PROBLEM 3
A = [1, 1, 1, 1 ; 2, 3, 1, 5; -1, 1, -5, 3 ; 3,1,7,-2 ]
b = [10 ; 31 ; -2 ; 18 ]
res = gauss(4,A,b)

% FACULTATIV - PROBLEM 4

% A)

for n=10:15
  c = cond(generate_vandermonde_matrix(n));
  printf("conditioning number for the first family of vandermonde matrices with n = :%f is : %f\n",n,c);
endfor

for n=10:15
  c = cond(generate_vandermonde_matrix2(n));
  printf("conditioning number for the second family of vandermonde matrices with n = :%f is : %f\n",n,c);
endfor










