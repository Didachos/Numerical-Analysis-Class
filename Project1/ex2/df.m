function dy = df( x )
%   second derivative of f
%   Detailed explanation goes here
    dy=216* (cos(x))^2 * sin(x)^3 - 432*cos(x)*(sin(x))^3 - 144*(cos(x))^4*sin(x) - 282*(cos(x))^2*sin(x) + 354*cos(x)*sin(x) + 24*sin(x);      
end

