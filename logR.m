function [phi,omega] = logR(R)

phi = acos((trace(R)-1)/2);

%omega = [R(3,2)-R(2,3);R(1,3)-R(3,1);R(2,1)-R(1,2)]/(2*sin(phi));
omega = (R - R')*phi/(2*sin(phi));
omega = [omega(3,2);omega(1,3);omega(2,1)];

