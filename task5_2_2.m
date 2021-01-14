x=[-195,0,20,100,200,300,497,700,977];
y=[0.2,1.55,1.694,2.33,2.93,3.6,4.6,6.7,8.1];
y1=y.*10^-8;
plot(x,y1,'X');
hold on;

%Aを作る
m=length(x);
A=zeros(m,2);
for j=1:2
    A(:,j)=(x').^(j-1);
end
% finish
[Q,R]=qr(A,0);
Qt=Q';
y2=y1';
c=R\Qt*y2;
c=c';
c=flip(c);
x1=-200:0.1:1000;
y=polyval(c,x1);
plot(x1,y);
saveas(gcf,'graph5_2_2.png');

q1=polyval(c,400);
q2=2.00*10^(-8);
t=(q2-c(2))/c(1)