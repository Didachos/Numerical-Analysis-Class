clc;
clear all; 
close all;
format long;
syms x;
A=[1,1,1,1,1,1,1,1,1,1,1,1; -pi,-pi/6,-pi/4,-pi/2,-3*(pi/4),-7*(pi/6),7*(pi/6),3*(pi/4),pi/2,pi/4,pi/6,pi]';
b=[0,-1/2,-sqrt(2)/2,-1,-sqrt(2)/2,1/2,-1/2,sqrt(2)/2,1,sqrt(2)/2,1/2,0]';
D=A'*A;
c=A'*b;
z=D\c
n=length(z)
f=0;
i=n;
while i>0
    f=f+z(i)*x.^(i-1)
    i=i-1;
end

    
sfalma=finderror(A,z,b)