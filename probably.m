%计算每一个f的选择概率
function p=probably(adaptList)
		fSum=sum(1./adaptList);
    for k=1:length(adaptList)
		p(k) = (1/adaptList(k)) / fSum;
    end
    p;
