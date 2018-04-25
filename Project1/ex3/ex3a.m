function [ L,U,P,x ] = ex3a(A,b)
%	exercise 3a)
[n n1] = size(A);
L=eye(n);
P=eye(n);
U=A;
%decomposition
for j= 1:n
    [pivot m] = max(abs(U(j:n, j)));
    m=m+j-1;
    if m~=j
        U([m,j],:)= U([j,m], :);
        P([m,j],:)= P([j,m], :);
        if (j >=2)
            L([m,j],1:j-1)=L([j,m], 1:j-1);
        end
    end
    for (i= j+1:n)
        L(i,j) = U(i,j) / U(j,j);
        U(i,:) = U(i,:) - L(i,j)*U(j,:);
    end    
end
%return x :
y= size(L,1);
[m,n]=size(L);
for i=1:m
    sum=0;
    for j=1:n
        sum=sum+P(i,j)*b(j);
    end
    for j=1:i-1
        sum=sum-y(j)*L(i,j);
    end
    sum=sum/L(i,i);
    y(i)=sum;
end
for i=1:m
    sum=0;
    for j=1:n
        sum=sum+y(j);
    end
    for j=1:i-1
        sum=sum-x(j)*U(i,j);
    end
    sum=sum/U(i,i);
    x(i)=sum;
end


end

