%对选择出的两个F进行变异
function [fc,fd]=transform(fa,fb,c)
Ca = adapt(fa,c);
Cb = adapt(fb,c);
[n1] = size(fa);
[n2] = size(fb);
 pm=0.45;
 p=rand();
 if p<=pm
 %flag = to_transform;
 flag = 1;
 end
 if p>pm
     flag = 0;
 end
 if flag == 1
     fc = mutation(fa,c);
     fd = mutation(fb,c);
 end
[fc,fd]
 