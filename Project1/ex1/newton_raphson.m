%changing initial x value.
a=3; b=1; % [0,3]
x=b;
if(f(x)*ddf(x)<=0)
    x=a;
end

%loops
k=0;

lastx=x;
x=lastx-f(lastx)/df(lastx);
e=abs(x-lastx);
k=1;
while(e>(10^(-6)/2))
    lastx=x;
    x=lastx-f(lastx)/df(lastx);
    e=abs(x-lastx);
    k=k+1;
end

