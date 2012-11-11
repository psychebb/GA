function [f,d]=random_allocate(f,index,d)
	[n m] = size(f);
	demand = d(index);
	random = randperm(m);
	for j:1:demand
		f(index,random(j)) = 1;
	end
	f;