a=2; b=3; %I=[0,3]--> I1=[0,1] , I2=[1,2] , I3=[2,3]  

if(f(a)*f(b)<0) %Bolzano
    steps=0; %step counter
    while(abs(b-a)>10^(-6)/2)  
        m= rand * (b-a) + a ; 
        steps=steps+1;
        if (f(m)==0)
            break;
        end
        if(f(m)*f(a)<0)
            b=m; 
        else
            a=m;
        end
    end    
else
    disp('no root')
end
