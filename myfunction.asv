function [FM,MM,delta]= myfunction(XX,YY,I,h)
X=XX;
Y=YY;
i=I;

syms t real
b = [1;t;-1;-t];
O1=ones(i,1);
O2=ones(length(X)-i,1);
H1=[O1,X(1,1:i)'];
H2=[O2,X(1,i+1:length(X))'];
H=blkdiag(H1,H2);
[a,c]=size(H);
W=eye(a);
D=H'*W*H;
%YY=length(Y)*(Y(i,1)-Y(i-1,1))*t+Y(i,1)-(Y(i,1)-Y(i-1,1))*i
%YY=((Y(i,1)-Y(i-1,1))*t+Y(i-1,1)*X(1,i)-Y(i,1)*X(1,i-1))/(X(1,i)-X(1,i-1))
DD=inv(D);
beta=DD*H'*W*Y;
M2=(b'*DD*b);
M1=(b'*beta).^2;
M=M1/M2;
d1=sym2poly(M1);
d2=sym2poly(M2);
if length(d1)<2
    d1(1,2)=0;
    d1(1,3)=0
end
if length(d1)<3
    d1(1,3)=0;
end
if length(d2)<2
    d2(1,2)=0;
    d2(1,3)=0;
end
if length(d2)<3
    d2(1,3)=0;
end

FM=(d1(1,1)*h^2+d1(1,2)*h+d1(1,3))/(d2(1,1)*h^2+d2(1,2)*h+d2(1,3));%function of M1
MMM=(d1(1,1)*d2(1,2)-d2(1,1)*d1(1,2))*h^2+2*(d1(1,1)*d2(1,3)-d2(1,1)*d1(1,3))*h+(d1(1,2)*d2(1,3)-d2(1,2)*d1(1,3));
MM=(d1(1,1)*d2(1,2)-d2(1,1)*d1(1,2))*h^2+2*(d1(1,1)*d2(1,3)-d2(1,1)*d1(1,3))*h+(d1(1,2)*d2(1,3)-d2(1,2)*d1(1,3));%导函数的分子=0
delta=(2*(d1(1,1)*d2(1,3)-d2(1,1)*d1(1,3)))^2-4*(d1(1,1)*d2(1,2)-d2(1,1)*d1(1,2))*(d1(1,2)*d2(1,3)-d2(1,2)*d1(1,3));%导函数的判别式
%zyb comment




