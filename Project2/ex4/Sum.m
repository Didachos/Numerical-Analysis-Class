function athr=Sum(A,n,z)
sum=0;
for i=1:n
    sum=sum+A(i).^z;
end
athr=sum;
end