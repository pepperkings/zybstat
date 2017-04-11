% XX=[0,2,4,6,8,10,12,14,16,18,20,22;];
% Ya=[2.27692298496089,2.44617139063115,3.89713178123585,4.02345782832729,4.29482862297582,4.31709948006086,39.9502220488384,45.0344460805029,51.4387443596564,57.3815584570930,63.7655167881490,69.7951999011371;];
% YY=roundn(Ya,-2)';

 function [g]=find_g(X,Y,i,h)
% X=XX;
% Y=YY;
% i=I;
% h=2;
g0=0;
g1=0;
g2=0;
g3=0;
g4=0;
g5=0;
%无实根
 [FF,MM,delta]= myfunction(X,Y,i,h);%获取delta值
if (delta<0)%delta<0,取边界值中，使得MM最小者
    T1=X(1,i-1);
    [F1,MM,delta]= myfunction(X,Y,i,T1);
    T2=X(1,i);
    [F2,MM,delta]= myfunction(X,Y,i,T2);
    if (F1>=F2)
        g0=F2;
        
    else
        g0=F1;
        
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
% k=[9.4;8.3];
% lk=2;
    if lk==1&&X(1,i-1)<k(1,1)&&k(1,1)<X(1,i)
       T3=k(1,1);
      [FF3,MM,delta]=myfunction(X,Y,i,T3);
       T1=X(1,i-1);
      [FF1,MM,delta]=myfunction(X,Y,i,T1);
       T2=X(1,i);
      [FF2,MM,delta]=myfunction(X,Y,i,T2);
              FFF1=vpa(FF1,4);
              FFF2=vpa(FF2,4);
              FFF3=vpa(FF3,4);
        F1=double(FFF1);
        F2=double(FFF2);
        F3=double(FFF3);
       T=[T1,T2,T3];
       s=[F1,F2,F3];
       [mi_n,index]=min(s);
       g1=mi_n;
    elseif  lk==2 && X(1,i-1)<=k(1,1)&& k(1,1)<=X(1,i)  &&( k(2,1)<X(1,i-1) || k(2,1)>X(1,i))
              T1=X(1,i-1);
              [FF1,MM,delta]=myfunction(X,Y,i,T1);
              T2=X(1,i);
              [FF2,MM,delta]=myfunction(X,Y,i,T2);
              T3=k(1,1);
              [FF3,MM,delta]=myfunction(X,Y,i,T3);
              FFF1=vpa(FF1,4);
              FFF2=vpa(FF2,4);
              FFF3=vpa(FF3,4);

             F1=double(FFF1);
             F2=double(FFF2);
             F3=double(FFF3);

            T=[T1,T2,T3];
            FF=[F1,F2,F3];
     [mi_n,index]=min(FF);
     g2=mi_n;
              
      elseif lk==2 && X(1,i-1)<=k(2,1) && k(2,1)<=X(1,i) &&(k(1,1)<X(1,i-1) || k(1,1)>X(1,i))
              T1=X(1,i-1);
              [FF1,MM,delta]=myfunction(X,Y,i,T1);
              T2=X(1,i);
              [FF2,MM,delta]=myfunction(X,Y,i,T2);
              T4=k(2,1);
              [FF4,MM,delta]=myfunction(X,Y,i,T4);
              FFF1=vpa(FF1,4);
              FFF2=vpa(FF2,4); 
              FFF4=vpa(FF4,4);
             F1=double(FFF1);
             F2=double(FFF2);
             F4=double(FFF4);
             T=[T1,T2,T4];
             FF=[F1,F2,F4];
     [mi_n,index]=min(FF);
     g3=mi_n;
    elseif lk==2 && X(1,i-1)<=k(1,1) && k(1,1)<=X(1,i) && X(1,i-1)<=k(2,1) && k(2,1)<=X(1,i)  
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
      T=[T1,T2,T3,T4];
      FF=[F1,F2,F3,F4];
     [mi_n,index]=min(FF);
     g4=mi_n;
    elseif lk==2 &&( X(1,i-1)>k(1,1) || k(1,1)>X(1,i) )&&( X(1,i-1)>k(2,1) || k(2,1)>X(1,i) )
              T1=X(1,i-1);
              [FF1,MM,delta]=myfunction(X,Y,i,T1);
              T2=X(1,i);
              [FF2,MM,delta]=myfunction(X,Y,i,T2);
               FFF1=vpa(FF1,4);
               FFF2=vpa(FF2,4); 
              F1=double(FFF1);
              F2=double(FFF2);
       
      T=[T1,T2];
      FF=[F1,F2];
     [mi_n,index]=min(FF);
     g5=mi_n;
               
               
    end
if g0>0
    g=g0;
elseif g1>0
    g=g1;
elseif g2>0
    g=g2;
elseif g3>0
    g=g3;
elseif g4>0
    g=g4;
elseif g5>0
    g=g5;
    

end

     
       
      
      




