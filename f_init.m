%��ʼ��f�������һ��0 1����
function f = f_init(c,d,n,m)
	f = zeros(n,m);
    %��Ϊ��������С������
	[max_d max_index] = max(d);
	[f demand] = allocate(f,max_index,c,d);
    if(demand ~= 0)
        f(max_index,:) = 0;
        [f demand] = random_allocate(f,max_index,d,c);
    end
    disp('max')
    disp(f)
    %�����е�С���������˳�� ������������С�������С�����з���
    i = 1;
    random = randperm(n);
	while demand == 0
            if i > n
			  break
			end
			if random(i) == max_index
                i = i + 1;
				continue
            end
			[f demand] = allocate(f,random(i),c,d);
            disp('allocate time')
            disp(i)
            disp(f)
            disp(demand)
            disp(random)
			if demand ~= 0
                f(random(i),:) = 0;
                [f demand] = random_allocate(f,random(i),d,c);
				break
            end
            i=i+1;
    end
    %��û�����������С�����������
	if i<n
		for j = i:n
			if random(j) == max_index
				continue
			end
			[f demand] = random_allocate(f,random(j),d,c);
		end
    end
    %����������е�-1��Ϊ0��ʹ��f���Ϊһ��0 1����
    for i = 1:n
		for j = 1:m
			if f(i,j) == -1
				f(i,j) = 0;
			end
		end
	end