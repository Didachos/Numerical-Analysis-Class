% initial values
x0=0; x1=1.6; x2=2;

%loops
k=0;

x=0;
e=abs(x2-x1);
while(e>(10^(-6)/2))
    
    if(k~=0)
        x0=x1; x1=x2; x2=x;
    end
    
    q=f(x0)/f(x1); r=f(x2)/f(x1); s=f(x2)/f(x0);
    x=x2-(r*(r-q)*(x2-x1)+(1-r)*s*(x2-x0))/((q-1)*(r-1)*(s-1));
    
    e=abs(x-x2);
    k=k+1;
    
end