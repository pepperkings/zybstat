function [LRP]=sampleLRP(k,L,R,D)
nn=randperm(length(L));
nnn=nn(1,1:k);
LL=zeros(300,k);
for i=1:k
LL(:,i)=L(:,nnn(i));
RR(:,i)=R(:,nnn(i));
end
LRPP=mean(LL')-mean(RR');
[maxLRP,index]=max(LRPP)
LRP=LRPP(1,D:index);