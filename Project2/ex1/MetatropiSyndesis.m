clc;
close all;
%clear all;
A2=[0 1 0 0 0 0 0 0 1 0 1 0 0 0 0;
    0 0 1 0 1 0 1 0 0 0 1 0 0 0 0;
    0 1 0 0 0 1 0 1 0 0 1 0 0 0 0;
    0 0 1 0 0 0 0 0 0 0 1 1 0 0 0;
    1 0 0 0 0 0 0 0 0 1 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 1 1 0 0 0 0;
    0 0 0 0 0 0 0 0 0 1 1 0 0 0 0;
    0 0 0 1 0 0 0 0 0 0 1 0 0 0 0;
    0 0 0 0 1 1 0 0 0 1 0 0 0 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 1 0 0 1 0 0 0 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 0 1 1 0 1 0 1;
    0 0 0 0 0 0 0 0 0 0 0 1 0 1 0;];
G2=GoogleG(A2,0.15);
b2=PowerMethod(G2);
p2=kanonikopoiisi(b2);
p(11)
p2(11)
