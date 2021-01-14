%1.1
x=[0.0,0.5,1.0,1.5,2.0,2.5,3.0];
x=x';
f=exp(-x).*sin(x);

%1.3
A=makeA(4);
[Q,R]=qr(A,0);
Qt=Q';
c=R\Qt*f

x1=linspace(0,3,200);
f1=exp(-x1).*sin(x1);
plot(x1,f1);
hold on;
c1=[0.0967,-0.5377,0.7448,0.0120];
y=polyval(c1,x1);
plot(x1,y);
plot(x,f,'rX');
hold off;
saveas(gcf,'graph5_1_3.png');
