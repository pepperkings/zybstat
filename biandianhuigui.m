LRP=mean(data')
Y=LRP(1,1:251)';
X = 0 : 1/250:1;


syms t
b = [t;-t];
i=40
H1=X(1,1:i);
H2=X(1,i+1:length(X));
H=blkdiag(H1',H2');
[a,c]=size(H)
W=eye(a);
D=H'*W*H;

DD=inv(D)
beta=DD*H'*W*Y
M2=(b'*DD*b)
M1=(b'*beta)^2
M=M1/M2
m=diff(M)
k=solve('m=0')




