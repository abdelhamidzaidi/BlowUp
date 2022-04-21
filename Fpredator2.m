function [dy] = Fpredator2(t,y)

alfa=1.11;
a=10;
c=10;
d=0.125;
e=1.2;
%ro=1.1;
%ro=0;
m=10;
p=1.00;
dy = zeros(2,1);    
dy(1) = y(1)*(1-y(1))-m*y(1)*y(2)/((y(1))^p+c);
dy(2) =alfa*d*y(2)*y(2) -alfa*e*y(2)*y(2)/(y(1)+a);

