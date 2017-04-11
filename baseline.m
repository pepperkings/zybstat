function [onsetb]=baseline(LRP,sd)
[max_LRP,index]=max(LRP);
LRP1=LRP(1,1:index);
bb=mean(LRP1(1,1:50))+sd*std(LRP1(1,1:50));
d=abs(LRP1-bb);
[min_d,index_d]=min(d);
t=0:2:1000;
onsetb=t(1,index_d);