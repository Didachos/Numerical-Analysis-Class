clc;
clear all;
close all;
format long;
syms x;
A=[-pi,-pi/6,-pi/4,-pi/2,-3*(pi/4),-7*(pi/6),7*(pi/6),3*(pi/4),pi/2,pi/4,pi/6,pi]';
B=[0,-1/2,-sqrt(2)/2,-1,-sqrt(2)/2,1/2,-1/2,sqrt(2)/2,1,sqrt(2)/2,1/2,0]';
n=size(A);
teliko=0;
for j=1:n  
    apotelesma=1;
    for i=1:n
       if i==j
           continue;
       end
       apotelesma=apotelesma*(x-A(i))/(A(j)-A(i));
    end
    teliko=teliko+apotelesma*B(j);
    
end
 pretty(teliko);
 simplify(teliko);
