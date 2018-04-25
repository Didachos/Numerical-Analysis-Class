function G = GoogleG(A,q) 
 format long;
[m,n]=size(A);
for i=1:n
    for j=1:n
    G(i,j)=q/n + (A(j,i)*(1-q))/findnj(A,j,n); 
    end
end
end

function a=findnj(A,j,n) 
sum=0;
for i=1:n
    sum=sum+A(j,i);
end
a=sum;
end