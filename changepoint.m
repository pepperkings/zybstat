
 function [onsetsc,onsetrc]=changepoint(LRP)

[maxx,ss]=max(LRP);
Y=roundn(LRP(1,1:ss),-2)';
n=length(Y)-1;
t = 0:2:2*n;
X=t/(2*n);
% [onset]=regression(LRP,X);%regression method
d=1:1:length(X);
n=length(X);
gg=zeros(1,n-2);
for I=2:n-3
[gg(1,I)]=find_g(X,Y,I,2);
end
[min_g,index]=min(gg(1,2:length(gg)-2))
onsetsc=t(1,index)
onsetrc=t(1,length(LRP)-index-1)
hold on
plot(d,X,'r.')
plot(Y,'k*')
plot(gg)