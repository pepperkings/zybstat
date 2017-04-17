function [onset_sp,onset_rp]=pp(LRP,p)
[max_LRP,index]=max(LRP);
LRP1=LRP(1,1:index);
p_max=p*max_LRP;
d=abs(LRP1-p_max);
[min_d,index_d]=min(d);
t=0:2:1000;
onset_sp=t(1,index_d);

onset_rp=t(1,length(LRP)-index_d-1);