%������ЩС���ڷ���ʱ������������ ��ʣ��������������
%index��ʾ�ڼ���С�������ڼ��У� demandΪ���С�������� randomΪ���������λ��
%����Ľ���ǵõ���indexС������������������С������������
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