function [onsetp]=pp(LRP,p)
[max_LRP,index]=max(LRP);
LRP1=LRP(1,1:index);
p_max=p*max_LRP;
d=abs(LRP1-p_max);
[min_d,index_d]=min(d)
onsetp=2*(index_d);