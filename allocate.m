%按需求给一个小区的某一行进行分配，初始时候分配矩阵f全为0，每次对第index行进行分配
function [f,d] = allocate(f,index,c,d)
[n m] = size(f);
distance = c(1,1);
demand = d(index);
random = randperm(m);

for j = 1:1:m
    if demand == 0
        break
    end
	if f(index,random(j)) == 0
		f(index,random(j)) = 1;
		demand = demand -1;
        %将不可分的位置置成-1
        for i=1:1:n
			if c(index,i) ~= 0
				if random(j)  - c(index,i) +1 > 0
					bottom = random(j) - c(index,i) +1;
                else
					bottom = 1;
                end
				if random(j) + c(index,i) - 1 < m
					up = random(j) + c(index,i) -1;
                else
                    up = m;
                end
                up
                bottom
				for k = bottom:1:up
					if (i == index && k == random(j)) || f(i,k) ~= 0
						continue
					end
					f(i,k) = -1;
                end
            end
		end
    end
end
f=f;
d=demand;
