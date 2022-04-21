function  essaie1
x = linspace(0,1,100);
t = linspace(0,1,100);

m = 0;
sol = pdepe(m,@angiopde,@angioic,@angiobc,x,t);

n = sol(:,:,1);
c = sol(:,:,2);

surf(x,t,c)

xlabel(' x')
ylabel(' t')
zlabel('z(t,x)')
shading interp

end

function [c,f,s] = angiopde(x,t,u,dudx)


m0=0.55;
alfa=1.1;
e=1.2;
a=20;
c0=10.0;
d1 = 2.5;
d2=2.5;
d=0.0512;
p=1;

c = [1; 1];
f = [d1*dudx(1);d2*dudx(2)];
s1=(1-u(1))-m0*u(1)*u(2)/((u(1))^p+c0); 
s2=alfa*d*u(2)*u(2)-alfa*e*u(2)*u(2)/(u(1)+a);
s=[s1;s2];

end

function u0 = angioic(x)
%u0 = [1521; 18];
u0 = [1520; 18];
%u0 = [1505; 18];
end

function [pl,ql,pr,qr] = angiobc(xl,ul,xr,ur,t)
pl = [0; 0];
ql = [1; 1];
pr = pl;
qr = ql;
end
