%��f���б���
function F=coding(f,c,d)
distance = c(1,1)-1;
[n,m] = size(f);
zero = zeros(n(1),distance);
f = [f,zero];  %��0
%[n m] = size(f);
F = cell(n,1);

for i = 1:1:n
    k=0; %������index
	flag = 0;%��û������1
    p = 1;%��ʾ1��ĵڼ���0
    sub = m-(d(i)-1)*distance;
    f1 = [];
	for j = 1:1:m+distance
		if f(i,j) == 0
			if flag == 0%˵��û������1�������Ϊ0
				f1(1,k+1) = 0;
				k = k +1;
			else 
				if p == distance
					if isempty(f1) ~= 1  
                        f1(1,k+1) = 1;
                        flag = 0;
                        p = 0;
                    else
                        f1(1,k+1) = 1;
                        flag = 0;
                        p = 0;
                    end
                else
                    p = p+1;
				end
			end
        else
            if k == 0
                flag = 1;
            else
                flag = 1;
                k = k+1;
            end
        end
    end
    F{i,1} = f1;
end
F;