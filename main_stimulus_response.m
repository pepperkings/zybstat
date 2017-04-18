%说明：比较绝对阈值法，百分比法，基线漂移法，分段回归法，变点法 stimuluslocked  and resposeloked
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
% onsetp11=zeros(1,m);
% onsetp12=zeros(1,m);
% onsetp13=zeros(1,m);
% onsetp14=zeros(1,m);
% 
% onseta11=zeros(1,m);
% onseta12=zeros(1,m);
% onseta13=zeros(1,m);
% onseta14=zeros(1,m);
% onseta15=zeros(1,m);
% 
% onsetb11=zeros(1,m);
% onsetb12=zeros(1,m);
% 
% onsetr1=zeros(1,m);
% onsetc1=zeros(1,m);
% 
% onsetp21=zeros(1,m);
% onsetp22=zeros(1,m);
% onsetp23=zeros(1,m);
% onsetp24=zeros(1,m);
% 
% onseta21=zeros(1,m);
% onseta22=zeros(1,m);
% onseta23=zeros(1,m);
% onseta24=zeros(1,m);
% onseta25=zeros(1,m);
% 
% onsetb21=zeros(1,m);
% onsetb22=zeros(1,m);
% 
% onsetr2=zeros(1,m);
% onsetc2=zeros(1,m);




for i=1:m
[LRP1]=sampleLRP(k,L,R,D1);%抽样后得到的LRP
[onset_sp11(1,i),onset_rp11(1,i)]=pp(LRP1,p1);%p1是pp方法的百分比
[onset_sp12(1,i),onset_rp12(1,i)]=pp(LRP1,p2);%p1是pp方法的百分比
[onset_sp13(1,i),onset_rp13(1,i)]=pp(LRP1,p3);%p1是pp方法的百分比
[onset_sp14(1,i),onset_rp14(1,i)]=pp(LRP1,p4);%p1是pp方法的百分比
[onset_sp15(1,i),onset_rp15(1,i)]=pp(LRP1,p5);%p1是pp方法的百分比

[onset_sa11(1,i),onset_ra11(1,i)]=absolute(LRP1,alpha1);
[onset_sa12(1,i),onset_ra12(1,i)]=absolute(LRP1,alpha2);
[onset_sa13(1,i),onset_ra13(1,i)]=absolute(LRP1,alpha3);
[onset_sa14(1,i),onset_ra14(1,i)]=absolute(LRP1,alpha4);
[onset_sa15(1,i),onset_ra15(1,i)]=absolute(LRP1,alpha5);

[onset_sb11(1,i),onset_rb11(1,i)]=baseline(LRP1,sd1);
[onset_sb12(1,i),onset_rb14(1,i)]=baseline(LRP1,sd2);
 [onset_sr1(1,i),onset_rr1(1,i)]=regression(LRP1);
 [onset_sc1(1,i),onset_rc11(1,i)]=changepoint(LRP1);


[LRP2]=sampleLRP(k,L,R,D2);%抽样后得到的LRP
[onset_sp21(1,i),onset_rp21(1,i)]=pp(LRP2,p1);%p1是pp方法的百分比
[onset_sp22(1,i),onset_rp22(1,i)]=pp(LRP2,p2);%p1是pp方法的百分比
[onset_sp23(1,i),onset_rp23(1,i)]=pp(LRP2,p3);%p1是pp方法的百分比
[onset_sp24(1,i),onset_rp24(1,i)]=pp(LRP2,p4);%p1是pp方法的百分比
[onset_sp25(1,i),onset_rp25(1,i)]=pp(LRP2,p5);%p1是pp方法的百分比
[onset_sa21(1,i),onset_ra21(1,i)]=absolute(LRP2,alpha1);
[onset_sa22(1,i),onset_ra22(1,i)]=absolute(LRP2,alpha2);
[onset_sa23(1,i),onset_ra23(1,i)]=absolute(LRP2,alpha3);
[onset_sa24(1,i),onset_ra24(1,i)]=absolute(LRP2,alpha4);
[onset_sa25(1,i),onset_ra25(1,i)]=absolute(LRP2,alpha5);

[onset_sb21(1,i),onset_rb11(1,i)]=baseline(LRP2,sd1);
[onset_sb22(1,i),onset_rb21(1,i)]=baseline(LRP2,sd2);
[onset_sr2(1,i),onset_rr2(1,i)]=regression(LRP2);
[onset_sc2(1,i),onset_rc2(1,i)]=changepoint(LRP2);


end
 %================以下是D1的结果
msp11=mean(onset_sp11);
msp12=mean(onset_sp12);
msp13=mean(onset_sp13);
msp14=mean(onset_sp14);
msp15=mean(onset_sp15);

msa11=mean(onset_sa11);
msa12=mean(onset_sa12);
msa13=mean(onset_sa13);
msa14=mean(onset_sa14);
msa15=mean(onset_sa15);


msb11=mean(onset_sb11);
msb12=mean(onset_sb12);
msr1=mean(onset_sr1);
msc1=mean(onset_sc);
mean_1_D1=[msp11,msp12,msp13,msp14,msp15,msa11,msa12,msa13,msa14,msa15,msb11,msb12,msr1,msc1];%stimulus mean
 
 %%%%%==============response loked
mrp11=mean(onset_rp11);
mrp12=mean(onset_rp12);
mrp13=mean(onset_rp13);
mrp14=mean(onset_rp14);

mra11=mean(onset_ra11);
mra12=mean(onset_ra12);
mra13=mean(onset_ra13);
mra14=mean(onset_ra14);
mra15=mean(onset_ra15);


mrb11=mean(onset_rb11);
mrb12=mean(onset_rb12);
mrr1=mean(onset_rr1);
mrc1=mean(onset_rc1);
mean_2_D1=[mrp11,mrp12,mrp13,mrp14,mrp15,mra11,mra12,mra13,mra14,mra15,mrb11,mrb12,mrr1,mrc1];%reseonse mean 从峰值倒过来计算
 
%================以下是D2的结果

msp21=mean(onset_sp21);
msp22=mean(onset_sp22);
msp23=mean(onset_sp23);
msp24=mean(onset_sp24);

msa21=mean(onset_sa21);
msa22=mean(onset_sa22);
msa23=mean(onset_sa23);
msa24=mean(onset_sa24);
msa25=mean(onset_sa25);


msb21=mean(onset_sb21);
msb22=mean(onset_sb22);
msr2=mean(onset_sr2);
msc2=mean(onset_sc2);
mean_1=[msp11,msp12,msp13,msp14,msp15,msa11,msa12,msa13,msa14,msa15,msb11,msb12,msr1,msc1];%stimulus mean
 
 %%%%%==============response loked
mrp21=mean(onset_rp21);
mrp22=mean(onset_rp22);
mrp23=mean(onset_rp23);
mrp24=mean(onset_rp24);

mra21=mean(onset_ra21);
mra22=mean(onset_ra22);
mra23=mean(onset_ra23);
mra24=mean(onset_ra24);
mra25=mean(onset_ra25);


mrb21=mean(onset_rb21);
mrb22=mean(onset_rb22);
mrr2=mean(onset_rr2);
mrc2=mean(onset_rc2);
mean_2_D2=[mrp21,mrp22,mrp23,mrp24,mrp25,mra21,mra22,mra23,mra24,mra25,mrb21,mrb22,mrr2,mrc2];%reseonse mean 从峰值倒过来计算
 















% std_1=[mp1,mp2,mp3,mp4,ma1,ma2,ma3,ma4,ma5,mb1,mb2]%,mr,mc];
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




