%changing initial x value.
a=2; b=2.6; % [0,3]
x=b;
if(f(x)*ddf(x)<=0)
    x=a;
end

%loops
k=0;

lastx=x;
x=lastx-f(lastx)/df(lastx)-(0.5*(f(lastx)^2)*ddf(lastx))/(df(lastx)^3);
e=abs(x-lastx);
k=1;
while(e>(10^(-6)/2))
    lastx=x;
    x=lastx-f(lastx)/df(lastx)-(0.5*(f(lastx)^2)*ddf(lastx))/(df(lastx)^3);
    e=abs(x-lastx);
    k=k+1;
end
