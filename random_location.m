%�������λ�ã���֤������С���������������
function b=random_location(demand,m,distance)
a=1:distance+1:m;
l=length(a);
r=randperm(l);
n=1;
for i =1:l
    b(n)=a(r(i));
    n=n+1;
    if n == demand+1
        break
    end
end
b;      