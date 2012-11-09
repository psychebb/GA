%变异基本操作
function a=mutation(f,c)
[n]=size(f);
for i = 1:n(1)
  first = 0;
  second = 0;
  tem = 0;
  while 1
   first = randint(1,1,[1,n(1)]);
   second = randint(1,1,[1,n(1)]);
   if f(1,first) ~= f(1,second)
    break
   end 
  end
  [f(1,first),f(1,second)]=deal(f(1,second),f(1,first));
                   tem = c;
    C = adapt(f,c);
  if C<tem
   continue
  end
  [f(1,first),f(1,second)]=deal(f(1,second),f(1,first));
end
a=f
