%����ÿһ��f��ѡ�����
function p=probably(adaptList)
		fSum=sum(1./adaptList);
    for k=1:length(adaptList)
		p(k) = (1/adaptList(k)) / fSum;
    end
    p;
