%���㽻��
function [f1,f2]=cross(f1,f2,d,c)

%��λ�������� ��
  [n,m] = size(f1);
  [a,b] = index(n,m,d,c);
  ai = ceil(a/n);
  aj = mod(a,m);
  if aj == 0
      aj = m;
  end
  bi = ceil(b/n);
  bj = mod(b,m);
  if bj == 0
      bj = m;
  end
  
%�������ͬһ��
  if ai == bi
      flag = aj;
    for j = aj:1:bj
        if f1(ai,j) ~= f1(ai,flag) && f2(ai,j) ~= f2(ai,flag)
          [f1(ai,flag) f1(ai,j)] = deal(f1(ai,j),f1(ai,flag));
          [f2(ai,flag) f2(ai,j)] = deal(f2(ai,j),f2(ai,flag));
          flag = j;
      elseif f1(ai,j) ~= f1(ai,flag) || f2(ai,j) ~= f2(ai,flag)
          flag = j;
        end
    end
  else  %a b����ͬһ��
   flag = aj
   for j = aj:1:m
        if f1(ai,j) ~= f1(ai,flag) && f2(ai,j) ~= f2(ai,flag)
          [f1(ai,flag),f1(ai,j)] = deal(f1(ai,j),f1(ai,flag));
          [f2(ai,flag),f2(ai,j)] = deal(f2(ai,j),f2(ai,flag));
          flag = j;
      elseif f1(ai,j) ~= f1(ai,flag) || f2(ai,j) ~= f2(ai,flag)
          flag = j;
        end
   end
      %�м����н���  
      %��������������ڵ�����
      if bi == ai+1
          flag =1;
          for j = 1:1:bj
              if f1(bi,j) ~= f1(bi,flag) && f2(bi,j) ~= f2(bi,flag)
                  [f1(bi,flag),f1(bi,j)] = deal(f1(bi,j),f1(bi,flag));
                  [f2(bi,flag),f2(bi,j)] = deal(f2(bi,j),f2(bi,flag));
                  flag = j;
              elseif f1(bi,j) ~= f1(bi,flag) || f2(bi,j) ~= f2(bi,flag)
                  flag = j;
              end
          end
      end
      %�����֮����˲�ֹһ��
      if bi > ai+1  
          for i = ai+1:1:bi-1
              flag = 1;
              for j = 1:1:m
                  if f1(i,j) ~= f1(i,flag) && f2(i,j) ~= f2(i,flag)
                      [f1(i,flag),f1(i,j)] = deal(f1(i,j),f1(i,flag));
                      [f2(i,flag),f2(i,j)] = deal(f2(i,j),f2(i,flag));
                      flag = j;
                  elseif f1(i,j) ~= f1(i,flag) || f2(i,j) ~= f2(i,flag)
                      flag = j;
                  end
              end
          end
          flag = 1;
          for j = 1:1:bj
              if f1(bi,j) ~= f1(bi,flag) && f2(bi,j) ~= f2(bi,flag)
                  [f1(bi,flag) f1(bi,j)] = deal(f1(bi,j),f1(bi,flag));
                  [f2(bi,flag) f2(bi,j)] = deal(f2(bi,j),f2(bi,flag));
                  flag = j;
              elseif f1(bi,j) ~= f1(bi,flag) || f2(bi,j) ~= f2(bi,flag)
                  flag = j;
              end
          end
      end
  end
[f1,f2]