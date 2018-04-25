function [m,steps]= dixotomisi( a,b )
%D Summary of this function goes here
if(f(a)*f(b)<0) %Bolzano
    steps=0; %step counter
    while(abs(b-a)>10^(-6)/2)  
        m=(a+b)/2; 
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

end

