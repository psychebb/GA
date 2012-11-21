%对于有些小区在分配时不能满足需求 将剩余的需求随机分配
%index表示第几个小区（即第几行） demand为这个小区的需求 random为产生的随机位置
%分配的结果是得到第index小区满足需求且满足最小间隔的随机分配
function [f,d]=random_allocate(f,index,d,c)
    distance = c(1,1)-1;
	[n m] = size(f);
	demand = d(index);
	random = random_location(demand,m,distance);
	for j=1:demand
		f(index,random(j)) = 1;
	end
	f;
    demand = 0;