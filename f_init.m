%初始化f，结果是一个0 1矩阵
function f = f_init(c,d,n,m)
	f = zeros(n,m);
    distance = c(1,1);
    %先为需求最多的小区分配
	[max_d max_index] = max(d);
    [f demand] = random_allocate(f,max_index,d,c);
    %将不可分的位置置成-1
    for j = 1:1:m
        for i = 1:1:n
			if c(max_index,i) ~= 0
				if f(max_index,j)  - c(max_index,i) +1 > 0
					bottom = f(max_index,j) - c(max_index,i) +1;
                else
					bottom = 1;
                end
				if f(max_index,j) + c(max_index,i) - 1 < m
					up = f(max_index,j) + c(max_index,i) -1;
                else
                    up = m;
                end
                
				for k = bottom:1:up
					if (i == max_index && k == f(max_index,j)) || f(i,k) ~= 0
						continue
					end
					f(i,k) = -1;
                end
            end
        end
    end
    

    for i = 1:n
        if i == max_index
            continue
        end
        position = find_positions(m,distance,d(i));
        for j = 1:d(i)
            if f(i,position(j)) == -1
                position = find_positions(m,distace,d(i));
            end
        end
        for j = 1:d(i)
            f(i,position(j)) = 1;
        end
    end
    
     %将分配矩阵中的-1置为0，使得f输出为一个0 1矩阵
    for i = 1:n
		for j = 1:m
			if f(i,j) == -1
				f(i,j) = 0;
			end
		end
	end
    f;
    