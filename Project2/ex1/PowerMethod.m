function maxd =PowerMethod(G) 
format long;               
[m,n]=size(G);
b=G(1:m,n);
for i=1:20
    b=G*b;
    l=1/b(1);
    b=l*b;
end
b=(1/l)*b;
maxd=b;  
end


