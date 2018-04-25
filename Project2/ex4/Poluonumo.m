function pol=Poluonumo(A,B,bathmos,n)
syms x;
sx1=Sum(A,n,1);
sx2=Sum(A,n,2);
sx3=Sum(A,n,3);
sx4=Sum(A,n,4);
sx5=Sum(A,n,5);
sx6=Sum(A,n,6);
sx7=Sum(A,n,7);
sx8=Sum(A,n,8);
sy1=Sum(B,n,1);
sxy=Sum2(A,B,n,1);
sx2y=Sum2(A,B,n,2);
sx3y=Sum2(A,B,n,3);
sx4y=Sum2(A,B,n,4);

if (bathmos==2)
   A=[n,sx1,sx2]'; 
   B=[sx1,sx2,sx3]';
   C=[sx2,sx3,sx4]';
   b=[sy1,sxy,sx2y]';
   for j=1:(bathmos+1)
       for i=1:(bathmos+1)
           if j==1
               T(i,j)=A(i);
           elseif j==2
               T(i,j)=B(i);
           else
               T(i,j)=C(i);
           end
       end       
   end
   agnwstos=T\b;
   p=0;
   for i=(bathmos+1):-1:1
       p=p+agnwstos(i)*20.^(i-1);
   end
   pol=p;
end
if(bathmos==3)
    A=[n,sx1,sx2,sx3]' ;
   B=[sx1,sx2,sx3,sx4]';
   C=[sx2,sx3,sx4,sx5]';
   D=[sx3,sx4,sx4,sx6]';
   b=[sy1,sxy,sx2y,sx3y]';
   for j=1:(bathmos+1)
       for i=1:(bathmos+1)
           if j==1
               T(i,j)=A(i);
           elseif j==2
               T(i,j)=B(i);
           elseif j==3
               T(i,j)=C(i);
           else
               T(i,j)=D(i);
           end
       end       
   end
   agnwstos=T\b;
   p=0;
   for i=(bathmos+1):-1:1
       p=p+agnwstos(i)*20.^(i-1);
   end
   pol=p;
end
if(bathmos==4)
    A=[n,sx1,sx2,sx3,sx4]'; 
   B=[sx1,sx2,sx3,sx4,sx5]';
   C=[sx2,sx3,sx4,sx5,sx6]';
   D=[sx3,sx4,sx4,sx6,sx7]';
   E=[sx4,sx4,sx6,sx7,sx8]';
   b=[sy1,sxy,sx2y,sx3y,sx4y]';
   for j=1:(bathmos+1)
       for i=1:(bathmos+1)
           if j==1
               T(i,j)=A(i);
           elseif j==2
               T(i,j)=B(i);
           elseif j==3 
               T(i,j)=C(i);
           elseif j==4
               T(i,j)=D(i);
           else 
               T(i,j)=E(i);
           end
       end       
   end
   agnwstos=T\b;
   p=0;
   i=bathmos+1;  
   for i=(bathmos+1):-1:1
       p=p+agnwstos(i)*20.^(i-1);
   end
   pol=p;
end
end