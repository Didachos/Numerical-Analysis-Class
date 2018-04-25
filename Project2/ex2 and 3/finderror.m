function a=finderror(A,z,b)
m=A*z;
pinakassfalmatos=b-m;
n=length(pinakassfalmatos);
sum=0;
for i=1:n
    sum=sum+pinakassfalmatos(i).^2;
end
a=sqrt(sum);
end