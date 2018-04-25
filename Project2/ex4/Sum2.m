function athrxy=Sum2(x,y,n,z)
sum=0;
for i=1:n
    sum=sum+x(i).^z*y(i);
end
athrxy=sum;
end