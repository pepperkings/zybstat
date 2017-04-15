t=0:2:1000;
tt=t(1,1:300);

L=[L1(1:300,:); L2(26:325,:)];
R=[R1(1:300,:); R2(26:325,:)];
LRP=mean(L')-mean(R');
LRP1=mean(L1')-mean(R1');
LRP2=mean(L2')-mean(R2');
hold on
plot(tt,LRP,'r')
plot(t,LRP1)
plot(t,LRP2)