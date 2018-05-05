function [t1,t2,t3] =arm(x, y)
l1=.3; l2=.2; l3=.1;
f=atan(y/x);
x1=x-l3*cos(f);
y1=y-l3*sin(f);
g=atan(y1/x1);
t1=g+acos(-(x1^2+y1^2+l1^2-l2^2)/(2*l1*sqrt(x1^2+y1^2)));
t2=(atan((y1-l1*sin(t1))/(x1-l1*cos(t1)))-t1);
t3=f-t1-t2;
end