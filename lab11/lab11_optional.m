% PROBLEM 3

A = [6, 2, 1, -1; 
    2,4,1,0; 
    1,1,4,-1; 
    -1,0,-1,3];

B = [8;7;5;1];
printf("LU from octave: \n\n");

[L,U] = lu(A);
L
U

printf("doolittle and relaxation_iterative\n");
res = doolittle(4,A);
printf("LU computed by me\n");
L = res{1}
U = res{2}
printf("z is\n"); 
res = relaxation_iterative(4,L,B, 0.001,1.25)
printf("x is\n");
res = relaxation_iterative(4,U,res, 0.001,1.25)