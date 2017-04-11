function [LRP]=sampleLRP(k,L1,R1)
nn=randperm(109);
nnn=nn(1,1:k);
LL=zeros(501,k);
for i=1:k
LL(:,i)=L1(:,nnn(i));
RR(:,i)=R1(:,nnn(i));
end
LRPP=mean(LL')-mean(RR');
LRP=LRPP(1,51:length(LRPP));