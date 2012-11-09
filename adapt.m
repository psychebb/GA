%计算f的适应值，即C(F)
function a=adapt(f,c)
[n,m]=size(f);
sum1=0;
sum2=0;
sum3=0;
sum4=0;
 for i = 1:n
  for p = 1:m
   for j = 1:n
    if j == i
     continue
    end
    if c(i,j) == 0
     continue
    end
    if p-c(i,j)+1<1 || p+c(i,j)-1>m 
     continue
    end
    for q = (p - (c(i,j) -1)):(p+c(i,j)-1)
     sum1 =sum1+ f(j,q);
    end
    sum2 = sum1+sum2;
    end
   sum3 =sum3+sum2*f(i,p);
  end
  a =sum4+sum3;
 end