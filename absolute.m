function [onset_sa,onset_ra]=absolute(LRP,alpha)%¾ø¶ÔãÐÖµ·¨
[max_LRP,index]=max(LRP);
LRP1=LRP(1,1:index);
d=abs(LRP1-alpha);
[min_d,index_d]=min(d);
t=0:2:1000;
onset_sa=t(1,index_d);
onset_ra=t(1,length(LRP)-index_d-1);