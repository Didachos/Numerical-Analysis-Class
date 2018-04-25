function ddy= ddf( x )
%   second derivative of f
%   Detailed explanation goes here
    ddy=3*cos(x)*(216*cos(x)^2-432*cos(x))*sin(x)^2 + sin(x)*(576*cos(x)^3*sin(x)+564*cos(x)*sin(x)-354*sin(x)) + sin(x)^3*(432*sin(x)-432*cos(x)*sin(x)) + cos(x)*(-144*cos(x)^4-282*cos(x)^2+354*cos(x)+24);

end

