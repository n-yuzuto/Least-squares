x=[-195,0,20,100,200,300,497,700,977];
y=[0.2,1.55,1.694,2.33,2.93,3.6,4.6,6.7,8.1];
y1=y.*10^-8
plot(x,y1,'X');
saveas(gcf,'graph5_2_1.png');
hold off;

%2.2
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
c=R\Qt*y2
