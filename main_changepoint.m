%˵����������㷨��ģ�����,stimulus-locked
L1 = csvread('.\LRP_data\L_huy.csv', 1, 1);
R1 = csvread('.\LRP_data\R_huy.csv', 1, 1);

L2 = csvread('.\LRP_data\L_sry.csv', 1, 1);
R2 = csvread('.\LRP_data\R_sry.csv', 1, 1);

m=1%ѭ���Ĵ���
k=250;%��ȡ�Դ���
D1=1;
D2=51;
onsetsc1=zeros(1,m);%�̼���ʱ���
onsetrc1=zeros(1,m);%�̼���ʱ��Ӧ�ķ�Ӧ��ʱ���
onsetsc2=zeros(1,m);
onsetrc2=zeros(1,m);

for i=1:m
[LRP1]=sampleLRP(k,L,R,D1);%������õ���LRP

[onsetsc1(1,i),onsetrc1(1,i)]=changepoint(LRP1);


[LRP2]=sampleLRP(k,L,R,D2);%������õ���LRP

[onsetsc2(1,i),onsetrc2(1,i)]=changepoint(LRP2);

end
 ms1=mean(onsetsc1);
  ms2=mean(onsetsc2);
   mr1=mean(onsetrc1);
    mr2=mean(onsetrc2);
    ds=ms1-ms2
    dr=mr1-mr2
 