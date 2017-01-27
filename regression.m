function [onset]=regression(LRP,time)

[ma,I]=max(LRP);
m=I;
t=time(1,1:m)
y=LRP(1,1:I);
my=min(y);
t1=cell(m);
t2=cell(m);
y1=cell(m);
y2=cell(m);
fy1=cell(m);
fy2=cell(m);
p1=cell(m);
p2=cell(m);
s1=cell(m);
s2=cell(m);
s=cell(m);
ss=zeros(1,m);
for i=1:m
    y1{i}=[y(1,1:i)];
    t1{i}=[t(1,1:i)];
  %  fy1{i}=my+0*t1{i};
    
    p1{i}=polyfit(t1{i},y1{i},1);
    fy1{i}=p1{i}(1,1)*t1{i}+p1{i}(1,2);
    
    
    t2{i}=[t(1,i:m)];
    y2{i}=[y(1,i:m)];
    p2{i}=polyfit(t2{i},y2{i},1);
    fy2{i}=p2{i}(1,1)*t2{i}+p2{i}(1,2);
    s1{i}=(fy1{i}-y1{i})*(fy1{i}-y1{i})';
    s2{i}=(fy2{i}-y2{i})*(fy2{i}-y2{i})';
    ss(1,i)=[s1{i}+s2{i}];
end
%ss=[s{1},s{2},s{3},s{4},s{5}];
min_s=min(ss)
k=find(ss==min_s)
onset=2*k
y1_k=[fy1{k}];
t1_k=[t1{k}];
y2_k=[fy2{k}];
t2_k=[t2{k}];
%============plot
hold on
plot(t,y,'*')
plot(t1_k,y1_k,'r')
plot(t2_k,y2_k,'r')
end
