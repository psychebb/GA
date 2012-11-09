%选出要匹配的序号
function f=select(pList)
	for i = 1:1:length(pList)          
        pHigh = sum(pList(1:i));
        pLow = pHigh-pList(i);
		a = rand(1);
		if a<pHigh && a>pLow
			f=i;
            break
        end
    end
    f=i;