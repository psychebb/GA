%对选择出的两个f(未编码)进行变异，输出编码后的两个F
function [Fc,Fd]=transform(fa,fb,c,d)
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
 Fa=cell(n(1),1);
 Fa=coding(fa,c,d);
 Fc=cell(n(1),1);
 Fb=cell(n(2),1);
 Fb=coding(fb,c,d);
 Fd=cell(n(1),1);
 if flag == 1
     Fc = mutation(Fa,c);
     Fd = mutation(Fb,c);
 end
[Fc,Fd]
 