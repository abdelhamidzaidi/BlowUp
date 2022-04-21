clc

[T,Y] = ode45(@Fpredator2,[0 1],[10 157]);

plot(T,Y(:,1),'-r')
hold on
plot(T,Y(:,2),'-b')

legend('u','v')
xlabel('t')
alfa=1.1;
a=10;
c=10;
d=0.125;
e=1.2;
ro=1.1;
m=10;
p=1.2;
