% initial values
x0=1.5; x1=3;

%loops
k=0;

x=0;
e=abs(x1-x0);
while(e>(10^(-6)/2))
    if(k~=0)
        x0=x1; x1=x;
    end
    x=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
    e=abs(x-x1);
    k=k+1;
end