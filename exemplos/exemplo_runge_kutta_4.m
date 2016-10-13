clc

f=@(x,t) -10*x;

h=0.01;
N=20;

[y1,t1]=euler_explicito(f,0,1,h,N);
[y2,t2]=euler_implicito(f,0,1,h,N);
[y3,t3]=runge_kutta_4(f,0,1,h,N);


figure(1)
plot(t1,y1,'ko-')
hold on
plot(t2,y2,'bo-')
plot(t3,y3,'ro-')
hold off





