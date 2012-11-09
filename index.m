%产生两点交叉的交叉点
function [a,b]=index(n,m,d,c)
  up = 0;
  for i = 1:1:n
    up = up + m - (d(i)-1)*(c(i,i)-1);
  end
  while 1
    a = randint(1,1,[1,up]);
    b = randint(1,1,[1,up]);
    if a < b && (b-a)>2
      break
    end
  end
  [a,b]

