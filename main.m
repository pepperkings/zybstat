%说明：比较绝对阈值法，百分比法，基线漂移法，分段回归法，变点法,stimulus-locked
L1 = csvread('.\LRP_data\L_huy.csv', 1, 1);
R1 = csvread('.\LRP_data\R_huy.csv', 1, 1);

L2 = csvread('.\LRP_data\L_sry.csv', 1, 1);
R2 = csvread('.\LRP_data\R_sry.csv', 1, 1);

m=1%循环的次数
k=250;%抽取试次数
p1=0.1;%p1是pp方法的百分比
p2=0.2;%p2是pp方法的百分比
p3=0.3;%p1是pp方法的百分比
p4=0.4;%p1是pp方法的百分比
p5=0.5;%p2是pp方法的百分比

alpha1=0.2;%绝对阈值法的阈值1
alpha2=0.4;%绝对阈值法的阈值2
alpha3=0.6;
alpha4=0.8;%绝对阈值法的阈值1
alpha5=1.0;%绝对阈值法的阈值2
sd1=2;%基线漂移法的sd
sd2=2.5;
D1=1;
D2=51;
onsetp11=zeros(1,m);
onsetp12=zeros(1,m);
onsetp13=zeros(1,m);
onsetp14=zeros(1,m);

onseta11=zeros(1,m);
onseta12=zeros(1,m);
onseta13=zeros(1,m);
onseta14=zeros(1,m);
onseta15=zeros(1,m);

onsetb11=zeros(1,m);
onsetb12=zeros(1,m);

onsetr1=zeros(1,m);
onsetc1=zeros(1,m);

onsetp21=zeros(1,m);
onsetp22=zeros(1,m);
onsetp23=zeros(1,m);
onsetp24=zeros(1,m);

onseta21=zeros(1,m);
onseta22=zeros(1,m);
onseta23=zeros(1,m);
onseta24=zeros(1,m);
onseta25=zeros(1,m);

onsetb21=zeros(1,m);
onsetb22=zeros(1,m);

onsetr2=zeros(1,m);
onsetc2=zeros(1,m);


for i=1:m
[LRP1]=sampleLRP(k,L,R,D1);%抽样后得到的LRP
[onset_sp11(1,i)]=pp(LRP1,p1);%p1是pp方法的百分比


[onsetp12(1,i)]=pp(LRP1,p2);%p1是pp方法的百分比
[onsetp13(1,i)]=pp(LRP1,p3);%p1是pp方法的百分比
[onsetp14(1,i)]=pp(LRP1,p4);%p1是pp方法的百分比
[onsetp15(1,i)]=pp(LRP1,p5);%p1是pp方法的百分比

[onseta11(1,i)]=absolute(LRP1,alpha1);
[onseta12(1,i)]=absolute(LRP1,alpha2);
[onseta13(1,i)]=absolute(LRP1,alpha3);
[onseta14(1,i)]=absolute(LRP1,alpha4);
[onseta15(1,i)]=absolute(LRP1,alpha5);

[onsetb11(1,i)]=baseline(LRP1,sd1);
[onsetb12(1,i)]=baseline(LRP1,sd2);
 [onsetr1(1,i)]=regression(LRP1);
 [onsetc1(1,i)]=changepoint(LRP1);


[LRP2]=sampleLRP(k,L,R,D2);%抽样后得到的LRP
[onsetp21(1,i)]=pp(LRP2,p1);%p1是pp方法的百分比
[onsetp22(1,i)]=pp(LRP2,p2);%p1是pp方法的百分比
[onsetp23(1,i)]=pp(LRP2,p3);%p1是pp方法的百分比
[onsetp24(1,i)]=pp(LRP2,p4);%p1是pp方法的百分比
[onsetp25(1,i)]=pp(LRP2,p5);%p1是pp方法的百分比
[onseta21(1,i)]=absolute(LRP2,alpha1);
[onseta22(1,i)]=absolute(LRP2,alpha2);
[onseta23(1,i)]=absolute(LRP2,alpha3);
[onseta24(1,i)]=absolute(LRP2,alpha4);
[onseta25(1,i)]=absolute(LRP2,alpha5);

[onsetb21(1,i)]=baseline(LRP2,sd1);
[onsetb22(1,i)]=baseline(LRP2,sd2);
[onsetr2(1,i)]=regression(LRP2);
[onsetc2(1,i)]=changepoint(LRP2);


 end
mp11=mean(onsetp11);
mp12=mean(onsetp12);
mp13=mean(onsetp13);
mp14=mean(onsetp14);

ma11=mean(onseta11);
ma12=mean(onseta12);
ma13=mean(onseta13);
ma14=mean(onseta14);
ma15=mean(onseta15);


mb11=mean(onsetb11);
mb12=mean(onsetb12);
 mr1=mean(onsetr1);
 mc1=mean(onsetc1);
result_mean_1=[mp11,mp12,mp13,mp14,mp15,ma11,ma12,ma13,ma14,ma15,mb11,mb12,mr1,mc1];
%result_mean_51=[mp1,mp2,mp3,mp4,ma1,ma2,ma3,ma4,ma5,mb1,mb2]%,mr,mc];
mp21=mean(onsetp21);
mp22=mean(onsetp22);
mp23=mean(onsetp23);
mp24=mean(onsetp24);

ma21=mean(onseta21);
ma22=mean(onseta22);
ma23=mean(onseta23);
ma24=mean(onseta24);
ma25=mean(onseta25);


mb21=mean(onsetb21);
mb22=mean(onsetb22);
 mr2=mean(onsetr2);
 mc2=mean(onsetc2);

sp21=std(onsetp21);
sp22=std(onsetp21);
sp23=std(onsetp23);
sp24=std(onsetp24);

sa21=std(onseta21);
sa22=std(onseta22);
sa23=std(onseta23);
sa24=std(onseta24);
sa25=std(onseta25);

sb21=std(onsetb21);
sb22=std(onsetb22);
sr2=std(onsetr2);
sc2=std(onsetc2);
% result_mean_1=[mp1,mp2,mp3,mp4,ma1,ma2,ma3,ma4,ma5,mb1,mb2]%,mr,mc];
% result_std_1=[sp1,sp2,sp3,sp4,sa1,sa2,sa3,sa4,sa5,sb1,sb2]%,sr,sc];

result_mean_2=[mp21,mp22,mp23,mp24,mp25,ma21,ma22,ma23,ma24,ma25,mb21,mb22,mr2,mc2];
result_std_2=[sp21,sp22,sp23,sp24,sa21,sa22,sa23,sa24,sa25,sb21,sb22,sr2,sc2];

result_diffrence=(result_mean_1-result_mean_2)'




