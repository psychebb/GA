%对编码后的f解码
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
