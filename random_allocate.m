%������ЩС���ڷ���ʱ������������ ��ʣ��������������
%index��ʾ�ڼ���С�������ڼ��У� demandΪ���С�������� randomΪ���������λ��
%����Ľ���ǵõ���indexС������������������С������������
%find_positions���distanceΪc(i,i)
function [f,d]=random_allocate(f,index,d,c)
    distance = c(1,1);
	[n m] = size(f);
	demand = d(index);
	random = find_positions(m,distance,demand);
	for j=1:demand
		f(index,random(j)) = 1;
	end
	f;
    demand = 0;