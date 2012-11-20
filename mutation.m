%对单个的F（编码后）进行变异，返回相应的结果A（编码后）
function A=mutation(F,c)
[n] = size(F);
A = cell(n(1),1);
for i = 1:n(1)
  tem = adapt(F_decoding(F,c),c);
  first = 0;
  second = 0;
  row_length = size(F{i});
  row_length = row_length(2);
  is_all_equal = 0;
  inner_flag = 0;
  for j = 1:row_length
      if inner_flag == 1
          is_all_equal = 0;
          break
      end
      for k = j+1:row_length
          if F{i,1}(1,j) ~= F{i,1}(1,k)
              inner_flag = 1;
              break
          end
      end
      is_all_equal = 1;
  end
          
  if is_all_equal == 0        
    while 1
      first = randint(1,1,[1,row_length]);
      second = randint(1,1,[1,row_length]);
      if F{i,1}(1,first) ~= F{i,1}(1,second)
        break
      end 
    end
  
    [F{i,1}(1,first),F{i,1}(1,second)]=deal(F{i,1}(1,second),F{i,1}(1,first));
    C = adapt(F_decoding(F,c),c);
    if C<tem
     continue
    end
    [F{i,1}(1,first),F{i,1}(1,second)]=deal(F{i,1}(1,second),F{i,1}(1,first));
  end
end
A=F
