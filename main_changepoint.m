%说明：单独变点法的模拟计算,stimulus-locked
L1 = csvread('.\LRP_data\L_huy.csv', 1, 1);
R1 = csvread('.\LRP_data\R_huy.csv', 1, 1);

L2 = csvread('.\LRP_data\L_sry.csv', 1, 1);
R2 = csvread('.\LRP_data\R_sry.csv', 1, 1);

m=1%循环的次数
k=250;%抽取试次数
D1=1;
D2=51;
onsetsc1=zeros(1,m);%刺激锁时结果
onsetrc1=zeros(1,m);%刺激锁时对应的反应锁时结果
onsetsc2=zeros(1,m);
onsetrc2=zeros(1,m);

for i=1:m
[LRP1]=sampleLRP(k,L,R,D1);%抽样后得到的LRP

[onsetsc1(1,i),onsetrc1(1,i)]=changepoint(LRP1);


[LRP2]=sampleLRP(k,L,R,D2);%抽样后得到的LRP

[onsetsc2(1,i),onsetrc2(1,i)]=changepoint(LRP2);

end
 ms1=mean(onsetsc1);
  ms2=mean(onsetsc2);
   mr1=mean(onsetrc1);
    mr2=mean(onsetrc2);
    ds=ms1-ms2
    dr=mr1-mr2
 