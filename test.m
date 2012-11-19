load ('compatibility matrix and demand matrix')
clc
c = c3;
d = d4;
m = 221;
n = 21;

f = {};
done_flag = 0;
result = [];
for num = 1:45
    f{num} = f_init(c,d,n,m)
    C(num) = adapt(f{num},c)
    if C(num) == 0
        result = f{num}
        done_flag = 1;
        break
    end
end

for times = 1:500

if done_flag == 1
    break
end


p = probably(C)
for i=1:2
    a(1,i) = select(p)
end
a(1)
a(2)
F1 = cell(n,1);
F1 = coding(f{a(1)},c,d)
F2 = cell(n,1);
F2 = coding(f{a(2)},c,d)
pc = rand();
last = 0;
if pc <= 0.9
  [F1,F2] = cross(F1,F2,d,c,m);
  last = length(f);
  f{last+1} = F_decoding(F1,c);
  f{last+2} = F_decoding(F2,c);
end
F1 = mutation(F1,c);
F2 = mutation(F2,c);
if last > 0
    F1_pos = last + 1;
    F2_pos = last + 2;
else
    F1_pos = a(1);
    F2_pos = a(2);
end
f{F1_pos} = F_decoding(F1,c);
f{F2_pos} = F_decoding(F2,c);

for num = 1:length(f)
   C(num) = adapt(f{num},c)
   if C(num) == 0
       result = f{num}
       done_flag = 1;
       break
   end
end

end

if times == 500
    [min_c min_c_index] = min(C);
    result = f{min_c_index}
end