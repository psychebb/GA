%�洢���ž�����������
c1 = [
5 4 0 0;
4 5 0 1;
0 0 5 2;
0 1 2 5];

c2 = [
2 1 1 0 1 0 1 1 1 1 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0;
1 2 1 0 1 0 1 1 0 1 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0;
1 1 2 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0;
0 0 1 2 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 1 1 1;
1 1 1 0 2 0 0 0 0 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0;
0 0 1 0 0 2 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
1 1 1 1 0 1 2 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0;
1 1 1 1 0 1 1 2 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 0;
1 0 1 1 0 1 1 1 2 1 1 1 0 0 0 0 0 0 0 0 0 0 0 1 1;
1 1 1 1 1 1 1 1 1 2 1 1 1 1 1 1 0 0 0 0 0 1 0 1 0;
0 0 1 1 1 0 1 1 1 1 2 0 1 1 1 1 0 1 1 1 1 1 1 1 1; 
1 1 1 1 1 0 1 1 1 1 0 2 1 1 0 0 0 0 0 0 0 0 0 0 0;
1 1 1 1 1 0 1 1 0 1 1 1 2 1 1 1 1 1 1 1 0 0 0 0 0;
1 1 1 0 1 0 0 0 0 1 1 1 1 2 1 1 1 1 1 1 0 0 0 0 0; 
1 1 0 0 1 0 0 0 0 1 1 0 1 1 2 1 1 1 1 1 1 1 0 0 0;
0 0 0 0 1 0 0 0 0 1 1 0 1 1 1 2 1 1 1 1 0 0 0 0 0;
0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 2 1 1 0 0 0 0 0 0; 
0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 1 1 2 1 1 0 0 0 0 0; 
0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 1 1 1 2 1 1 1 1 0 0; 
0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 1 0 1 1 2 1 1 1 0 0; 
0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 1 1 2 1 1 0 0; 
0 0 0 0 0 0 0 0 0 1 1 0 0 0 1 0 0 0 1 1 1 2 1 1 1;
0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 1 1 2 1 1; 
0 0 0 1 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 2 1;
0 0 0 1 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 1 1 1 2];

c3 = [
5 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0;
1 5 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0;
1 1 5 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0;
0 1 1 5 1 0 0 0 1 1 1 1 0 0 0 0 1 1 0 0 0;
0 0 1 1 5 0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 0;
1 0 0 0 0 5 1 1 0 0 0 0 1 1 1 0 0 0 0 0 0; 
1 1 0 0 0 1 5 1 1 0 0 0 1 1 1 1 0 0 1 0 0;
1 1 1 0 0 1 1 5 1 1 0 0 0 1 1 1 1 0 1 1 0;
1 1 1 1 0 0 1 1 5 1 1 0 0 0 1 1 1 1 1 1 1; 
0 1 1 1 1 0 0 1 1 5 1 1 0 0 0 1 1 1 0 1 1;
0 0 1 1 1 0 0 0 1 1 5 1 0 0 0 0 1 1 0 0 1;
0 0 0 1 1 0 0 0 0 1 1 5 0 0 0 0 0 1 0 0 0;
0 0 0 0 0 1 1 0 0 0 0 0 5 1 1 0 0 0 0 0 0;
1 0 0 0 0 1 1 1 0 0 0 0 1 5 1 1 0 0 1 0 0;
1 1 0 0 0 1 1 1 1 0 0 0 1 1 5 1 1 0 1 1 0;
1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 5 1 1 1 1 1; 
0 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 5 1 1 1 1;
0 0 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 5 0 1 1;
0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 0 5 1 1;
0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 5 1;
0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 5];

c4 = [
7 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0 0;
1 7 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0 0;
1 1 7 1 1 0 0 1 1 1 1 0 0 0 0 1 1 1 0 0 0; 
0 1 1 7 1 0 0 0 1 1 1 1 0 0 0 0 1 1 0 0 0;
0 0 1 1 7 0 0 0 0 1 1 1 0 0 0 0 0 1 0 0 0;
1 0 0 0 0 7 1 1 0 0 0 0 1 1 1 0 0 0 0 0 0;
1 1 0 0 0 1 7 1 1 0 0 0 1 1 1 1 0 0 1 0 0;
1 1 1 0 0 1 1 7 1 1 0 0 0 1 1 1 1 0 1 1 0;
1 1 1 1 0 0 1 1 7 1 1 0 0 0 1 1 1 1 1 1 1; 
0 1 1 1 1 0 0 1 1 7 1 1 0 0 0 1 1 1 0 1 1;
0 0 1 1 1 0 0 0 1 1 7 1 0 0 0 0 1 1 0 0 1;
0 0 0 1 1 0 0 0 0 1 1 7 0 0 0 0 0 1 0 0 0;
0 0 0 0 0 1 1 0 0 0 0 0 7 1 1 0 0 0 0 0 0;
1 0 0 0 0 1 1 1 0 0 0 0 1 7 1 1 0 0 1 0 0;
1 1 0 0 0 1 1 1 1 0 0 0 1 1 7 1 1 0 1 1 0;
1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 7 1 1 1 1 1;
0 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 7 1 1 1 1;
0 0 1 1 1 0 0 0 1 1 1 1 0 0 0 1 1 7 0 1 1;
0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 0 7 1 1;
0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 7 1;
0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 1 1 1 1 7];
    
c5 = [
7 2 1 0 0 1 2 2 1 0 0 0 0 1 1 1 0 0 0 0 0;
2 7 2 1 0 0 1 2 2 1 0 0 0 0 1 1 1 0 0 0 0;
1 2 7 2 1 0 0 1 2 2 1 0 0 0 0 1 1 1 0 0 0;
0 1 2 7 2 0 0 0 1 2 2 1 0 0 0 0 1 1 0 0 0;
0 0 1 2 7 0 0 0 0 1 2 2 0 0 0 0 0 1 0 0 0;
1 0 0 0 0 7 2 1 0 0 0 0 2 2 1 0 0 0 0 0 0;
2 1 0 0 0 2 7 2 1 0 0 0 1 2 2 1 0 0 1 0 0;
2 2 1 0 0 1 2 7 2 1 0 0 0 1 2 2 1 0 1 1 0;
1 2 2 1 0 0 1 2 7 2 1 0 0 0 1 2 2 1 1 1 1;
0 1 2 2 1 0 0 1 2 7 2 1 0 0 0 1 2 2 0 1 1;
0 0 1 2 2 0 0 0 1 2 7 2 0 0 0 0 1 2 0 0 1;
0 0 0 1 2 0 0 0 0 1 2 7 0 0 0 0 0 1 0 0 0;
0 0 0 0 0 2 1 0 0 0 0 0 7 2 1 0 0 0 0 0 0; 
1 0 0 0 0 2 2 1 0 0 0 0 2 7 2 1 0 0 1 0 0;
1 1 0 0 0 1 2 2 1 0 0 0 1 2 7 2 1 0 2 1 0;
1 1 1 0 0 0 1 2 2 1 0 0 0 1 2 7 2 1 2 2 1;
0 1 1 1 0 0 0 1 2 2 1 0 0 0 1 2 7 2 1 2 2;
0 0 1 1 1 0 0 0 1 2 2 1 0 0 0 1 2 7 0 1 2;
0 0 0 0 0 0 1 1 1 0 0 0 0 1 2 2 1 0 7 2 1;
0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 2 2 1 2 7 2;
0 0 0 0 0 0 0 0 1 1 1 0 0 0 0 1 2 2 1 2 7];

d1 = [1 1 1 3];

d2 = [10 11 9 5 9 4 5 7 4 8 8 9 10 7 7 6 4 5 5 7 6 4 5 7 5];

d3 = [8 25 8 8 8 15 18 52 77 28 13 15 31 15 36 57 28 8 10 13 8];

d4 = [5 5 5 8 12 25 30 25 30 40 40 45 20 30 25 15 15 30 20 20 25];

save('compatibility matrix and demand matrix','c1','c2','c3','c4','c5','d1','d2','d3','d4')