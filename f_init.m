function f = f_init(c,d,n,m)
	f = zeros(n,m);
	[max_d max_index] = max(d);
	[f demand] = allocate(f,max_index,c,d);
	while demand == 0 && i < n
		random = randperm(n);
			for i = 1:1:n
				if random(i) == max_index
					continue
				end
				[f demand] = allocate(f,random(i),c,d);
				if demand ~= 0
					break
				end
			end
	end
	if i<n
		for j = i:n
			if random(i) == max_index
				continue
			end
			[f demand] = random_allocate(f,random(i),c,d);
		end
    end
    for i = 1:n
		for j = 1:m
			if f(i,j) == -1
				f(i,j) = 0;
			end
		end
	end