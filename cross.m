%两点交叉 输入编码后的F，以及信道数m 输出编码后的F
function [F1,F2]=cross(F1,F2,d,c,m)
distance = c(1,1)-1;
[n]=size(F1);
n=n(1);
row_length = [];
for i = 1:n
	row_length(i) = length(F1{i});
end
for i = 1:n
    row_length1(i) = length(F2{i});
end
row_start = ones(1,n);
%定位交叉点的行 列
  for i = 1:n-1
      row_start(i+1) = row_start(i) + row_length(i);
  end
  [a,b] = index(n,m,d,c);
  for i = 1:n-1
    if a >= row_start(i) && a < row_start(i+1)
	  ai = i;
	  break
    end
  end
  if a >= row_start(n)
    ai = n;
  end
  aj = a - row_start(ai);
  if aj == 0
      aj = 1;
  end
  for i = 1:n-1
    if b >= row_start(i) && b < row_start(i+1)
	  bi = i;
	  break
	end
  end
  if b >= row_start(n)
    bi = n;
  end
  bj = b - row_start(bi);
  if bj == 0
    bj = 1;
  end
  disp('=============')
  disp(row_length)
  disp(row_length1)
  disp('++++++++++++++++')
  disp(row_length == row_length1)
  disp('===============')
  disp('ai aj')
  disp(ai)
  disp(aj)
  disp('bi bj')
  disp(bi)
  disp(bj)
%开始交叉如果交叉点在同一行
  if ai == bi
    flag = aj;
    for j = aj:1:bj
      if F1{ai}(j) ~= F1{ai}(flag) && F2{ai}(j) ~= F2{ai}(flag)
	    [F1{ai}(flag) F1{ai}(j)] = deal(F1{ai}(j),F1{ai}(flag));
        [F2{ai}(flag) F2{ai}(j)] = deal(F2{ai}(j),F2{ai}(flag));
	    flag = j;
	  elseif F1{ai}(j) ~= F1{ai}(flag) || F2{ai}(j) ~= F2{ai}(flag)
	    flag = j;
	  end
    end
    %如果交叉点不在同一行 
  else
      %先交叉ai所在的一行
    flag = aj;
    for j = aj:1:row_length(ai)
      if F1{ai}(j) ~= F1{ai}(flag) && F2{ai}(j) ~= F2{ai}(flag)
		 [F1{ai}(flag) F1{ai}(j)] = deal(F1{ai}(j),F1{ai}(flag));
	     [F2{ai}(flag) F2{ai}(j)] = deal(F2{ai}(j),F2{ai}(flag));
		 flag = j;
	  elseif F1{ai}(j) ~= F1{ai}(flag) || F2{ai}(j) ~= F2{ai}(flag)
		 flag = j;
	  end
    end
	%再交叉ai的下面的行
    flag = 1;
    %如果bi在ai的下一行
    if bi == ai+1
    for j = 1:bj
      if F1{bi}(j) ~= F1{bi}(flag) && F2{bi}(j) ~= F2{bi}(flag)
        [F1{bi}(flag) F1{bi}(j)] = deal(F1{bi}(j),F1{bi}(flag));
	    [F2{bi}(flag) F2{bi}(j)] = deal(F2{bi}(j),F2{bi}(flag));
		flag = j;
	  elseif F1{bi}(j) ~= F1{bi}(flag) || F2{bi}(j) ~= F2{bi}(flag)
		flag = j;
	  end
    end
    end
	%如果bi和ai之间不止一行
	if bi > ai + 1
        %先交叉之间的行
	  for i = ai + 1 : bi - 1
	   flag = 1;
	   for j = 1:row_length(i)
	     if F1{i}(j) ~= F1{i}(flag) && F2{i}(j) ~= F2{i}(flag)
	       [F1{i}(flag) F1{i}(j)] = deal(F1{i}(j),F1{i}(flag));
		   [F2{i}(flag) F2{i}(j)] = deal(F2{i}(j),F2{i}(flag));
		   flag = j;
		 elseif F1{i}(j) ~= F1{i}(flag) || F2{i}(j) ~= F2{i}(flag)
		   flag = j;
		 end
	   end
      end
      %在交叉bi所在的行
      flag = 1;
       for j = 1:bj
      if F1{bi}(j) ~= F1{bi}(flag) && F2{bi}(j) ~= F2{bi}(flag)
        [F1{bi}(flag) F1{bi}(j)] = deal(F1{bi}(j),F1{bi}(flag));
	    [F2{bi}(flag) F2{bi}(j)] = deal(F2{bi}(j),F2{bi}(flag));
		flag = j;
	  elseif F1{bi}(j) ~= F1{bi}(flag) || F2{bi}(j) ~= F2{bi}(flag)
		flag = j;
	  end
    end
    end
  end