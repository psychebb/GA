%计算f的适应值，即C(F)
function a=adapt(f,c)
sum2=0;
[n,m]=size(f);
for i=1:n
    for p=1:m
        sum1=0;
        for j=1:n
            if j~=i  && c(i,j)>0
                for q=p-(c(i,j)-1):p+(c(i,j)-1)
                     if q>=1 && q<=m
                         sum1=sum1+f(j,q);
                     end
                end
            end
        end
        sum2=sum2+sum1*f(i,p);
    end
end
a=sum2;