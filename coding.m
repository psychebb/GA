%对f进行编码，返回一个cell，内部每一个元素是对应行的编码结果
function F=coding(f,c,d)
distance = c(1,1)-1;
[n,m] = size(f);
zero = zeros(n(1),distance);
f = [f,zero];  %补0
%[n m] = size(f);
F = cell(n,1);

for i = 1:1:n
    k=1; %编码后的index
    sub = m-(d(i)-1)*distance;
    f1 = [];
    j = 1;
	while j <= m+distance
		if f(i,j) == 0
			f1(1,k) = 0;
			k = k +1;
            j = j+1;
		else 
			f1(1,k) = 1;
            j = j+distance+1;
            k = k+1;
        end
    end
    F{i,1} = f1;
end
F;