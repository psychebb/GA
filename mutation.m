%对单个的F（编码后）进行变异，返回相应的结果A（编码后）
function A=mutation(F,c)
[n] = size(F);
A = cell(n(1),1);
for i = 1:n(1)
  first = 0;
  second = 0;
  tem = 0;
  while 1
   first = randint(1,1,[1,n(1)]);
   second = randint(1,1,[1,n(1)]);
   if F{i,1}(1,first) ~= F{i,1}(1,second)
    break
   end 
  end
  [F{i,1}(1,first),F{i,1}(1,second)]=deal(F{i,1}(1,second),F{i,1}(1,first));
                   tem = c;
    C = adapt(decoding(F,c),c);
  if C<tem
   continue
  end
  [F{i,1}(1,first),F{i,1}(1,second)]=deal(F{i,1}(1,second),F{i,1}(1,first));
end
A=F
