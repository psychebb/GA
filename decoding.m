%对编码后的f解码
function f = decoding(f,c)
[n m] = size(f);
distance = c(1,1)-1;
for i = 1:1:n
	k = 1;
	for j = 1:1:m
		if f(i,j) == 1
			f1(i,k) = 1;
			for l = k+1:1:k+distance
				f1(i,l) = 0;
			end
			k = k + distance + 1
		else
			f1(i,k) = 0;
			k = k + 1;
		end
    end
end
f = f1(:,1:m-distance);
