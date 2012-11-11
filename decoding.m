%在编码后的F（cell格式）取其每一个元素（即一个编码后的行向量）f进行解码，
%返回对应的行向量
function f = decoding(f,c)
[n m] = size(f);
distance = c(1,1)-1;
f1 = [];
k = 1;
for j = 1:1:m
	if f(1,j) == 1
		f1(1,k) = 1;
		for l = k+1:1:k+distance
			f1(1,l) = 0;
		end
		k = k + distance + 1;
	else
		f1(1,k) = 0;
		k = k + 1;
    end
end
[a b] = size(f1);
f = f1(:,1:b-distance);
