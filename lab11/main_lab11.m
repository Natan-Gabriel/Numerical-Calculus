%%%% PROBLEM 1

A = [3, -1, 0, 0,0,0 ; 
    -1,3, -1, 0, 0,0 ;
    0,-1,3, -1, 0, 0 ;
    0,0,-1,3, -1, 0 ;
    0,0,0,-1,3, -1 ;
    0,0,0,0,-1,3 ;];
B = [2;1;1;1;1;2];

printf("jacobi_iterative\n");
res = jacobi_iterative(6,A,B, 0.001)

printf("gauss_seidel_iterative\n");
res = gauss_seidel_iterative(6,A,B, 0.001)


printf("relaxation_iterative\n");
res = relaxation_iterative(6,A,B, 0.001,1.25)
 
 
%%%% PROBLEM 2

D = [3, 0,0;
    0, 4,0;
    0, 0,-6]
    
L = [0, 0,0;
    -2, 0,0;
    -1, 2,0]
    

U = [0, 1,1;
    0, 0,0;
    0, 0,0]

B = [12;2;-5];

printf("jacobi_matriceal\n");
res = jacobi_matriceal(3,D,L,U,B, 0.00001)

printf("gauss_seidel_matriceal\n");
res = gauss_seidel_matriceal(3,D,L,U,B, 0.00001)

printf("relaxation_matriceal\n");
res = relaxation_matriceal(3,D,L,U,B, 0.00001,1.25)

% PROBLEM 3

A = [6, 2, 1, -1; 
    2,4,1,0; 
    1,1,4,-1; 
    -1,0,-1,3];

B = [8;7;5;1];


printf("doolittle and relaxation_iterative\n");
res = doolittle(4,A);
L = res{1}
U = res{2}
printf("z is\n"); 
res = relaxation_iterative(4,L,B, 0.001,1.25)
printf("x is\n");
res = relaxation_iterative(4,U,res, 0.001,1.25)















