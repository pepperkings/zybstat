
% function [g]=find_g(XX,YY,I,h)
X=XX;
Y=YY;
i=I;
%无实根
 [FF,MM,delta]= myfunction(X,Y,I,h);%获取delta值
if (delta<0)%delta<0,取边界值中，使得MM最小者
    T1=X(1,i-1);
    [F1,MM,delta]= myfunction(X,Y,i,T1);
    T2=X(1,i);
    [F2,MM,delta]= myfunction(X,Y,i,T2);
    if (F1>=F2)
        g=F2
        
    else
        g=F1
        
    end

else 
    syms t
   [FF,MM,delta]= myfunction(X,Y,i,t);
    kk=solve(MM,t);
    ka=vpa(kk,4);%输出数值解
    k=double(ka);
    [lk,ck]=size(k);
  
end


%%%%%%%%%%%%%%

    if (lk==1)&&(X(1,i-1)<k(1,1)<X(1,i))
       T3=k(1,1);
      [FF3,MM,delta]=myfunction(X,Y,i,T3);
       T1=X(1,i-1);
      [FF1,MM,delta]=myfunction(X,Y,i,T1);
       T2=X(1,i);
      [FF2,MM,delta]=myfunction(X,Y,i,T2);
      F1=double(FF1);
        F2=double(FF2);
          F3=double(FF3);
       T=[T1,T2,T3];
       s=[F1,F2,F3];
       [mi_n,index]=min(s);
       g=mi_n
      elseif (lk==2)&&((X(1,i-1)<k(1,1)<X(1,i))||(X(1,i-1)<k(2,1)<X(1,i)))
      T1=X(1,i-1);
      [FF1,MM,delta]=myfunction(X,Y,i,T1);
      T2=X(1,i);
      [FF2,MM,delta]=myfunction(X,Y,i,T2);
      T3=k(1,1);
      [FF3,MM,delta]=myfunction(X,Y,i,T3);
      T4=k(2,1);
      [FF4,MM,delta]=myfunction(X,Y,i,T4);
      FFF1=vpa(FF1,4);
      FFF2=vpa(FF2,4);
      FFF3=vpa(FF3,4);
      FFF4=vpa(FF4,4);
        F1=double(FFF1);
        F2=double(FFF2);
        F3=double(FFF3);
        F4=double(FFF4);
      T=[T1,T2,T3,T4]
      FF=[F1,F2,F3,F4];
    
      
     [mi_n,index]=min(FF);
     g=mi_n
    end

     
       
      
      




