% Exercise 1 (1)
t=-2*pi:pi/20:2*pi;
p1=-cos(t)-1;p2=-cos(t)+2.5;
p3=cos(t(t<pi/2 & t>-pi/2))+1;p4=cos(t(t<pi/2 & t>-pi/2))+2;
h = figure;
subplot(1,2,1)
hold on
plot(t,p1);
plot(t,p2);
plot(t(t<pi/2 & t>-pi/2),p3);
plot(t(t<pi/2 & t>-pi/2)+0.5,p4)
plot(t(t<pi/2 & t>-pi/2)-0.5,p4)
plot(t(t<pi/2 & t>-pi/2),p4+1)
grid on
axis equal
hold off

al=pi/3;
A=[cos(al) -sin(al);sin(al) cos(al)];
subplot(1,2,2)
hold on
point1=[t;p1];
point1=A*point1;
plot(point1(1,:),point1(2,:));
point2=[t;p2];
point2=A*point2;
plot(point2(1,:),point2(2,:));
point3=[t(t<pi/2 & t>-pi/2);p3];
point3=A*point3;
plot(point3(1,:),point3(2,:));
point4=[t(t<pi/2 & t>-pi/2)+0.5;p4];
point4=A*point4;
plot(point4(1,:),point4(2,:));
point5=[t(t<pi/2 & t>-pi/2)-0.5;p4];
point5=A*point5;
plot(point5(1,:),point5(2,:));
point6=[t(t<pi/2 & t>-pi/2);p4+1];
point6=A*point6;
plot(point6(1,:),point6(2,:));
grid on
axis equal
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex11','-dpdf','-fillpage')

% Exercise 1 (2)
h=figure;
t=-2*pi:pi/20:2*pi;
p1=-cos(t)-1;p2=-cos(t)+2.5;
p3=cos(t(t<pi/2 & t>-pi/2))+1;p4=cos(t(t<pi/2 & t>-pi/2))+2;
subplot(1,2,1)
hold on
plot(t,p1);
plot(t,p2);
plot(t(t<pi/2 & t>-pi/2),p3);
plot(t(t<pi/2 & t>-pi/2)+0.5,p4)
plot(t(t<pi/2 & t>-pi/2)-0.5,p4)
plot(t(t<pi/2 & t>-pi/2),p4+1)
grid on
axis equal
hold off

A2=[1+0.01 0.5; -0.01 1-0.0001];
subplot(1,2,2)
hold on
point1=[t;p1];
point1=A2*point1;
plot(point1(1,:),point1(2,:));
point2=[t;p2];
point2=A2*point2;
plot(point2(1,:),point2(2,:));
point3=[t(t<pi/2 & t>-pi/2);p3];
point3=A2*point3;
plot(point3(1,:),point3(2,:));
point4=[t(t<pi/2 & t>-pi/2)+0.5;p4];
point4=A2*point4;
plot(point4(1,:),point4(2,:));
point5=[t(t<pi/2 & t>-pi/2)-0.5;p4];
point5=A2*point5;
plot(point5(1,:),point5(2,:));
point6=[t(t<pi/2 & t>-pi/2);p4+1];
point6=A2*point6;
plot(point6(1,:),point6(2,:));
grid on
axis equal
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex12','-dpdf','-fillpage')

% Exercise 1 (3)
t=-pi:pi/50:pi;
x1=repmat(2,1,length(t));
x2=repmat(-2,1,length(t));
y1=t;y2=t;
x3=t;x4=t;
y3=x3+1;y4=x4-1;
x5=cos(t);y5=sin(t);
h=figure;
subplot(1,2,1)
hold on 
plot(x1,y1);
plot(x2,y2);
plot(x3,y3);
plot(x4,y4);
plot(x5,y5);
axis equal
hold off

A2=[1+0.01 0.5; -0.01 1-0.0001];
subplot(1,2,2)
hold on
point1=[x1;y1];
point1=A2*point1;
plot(point1(1,:),point1(2,:));
point2=[x2;y2];
point2=A2*point2;
plot(point2(1,:),point2(2,:));
point3=[x3;y3];
point3=A2*point3;
plot(point3(1,:),point3(2,:));
point4=[x4;y4];
point4=A2*point4;
plot(point4(1,:),point4(2,:));
point5=[x5;y5];
point5=A2*point5;
plot(point5(1,:),point5(2,:));
grid on
axis equal
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex13','-dpdf','-fillpage')

h=figure;
t=-pi:pi/50:pi;
x1=repmat(2,1,length(t));
x2=repmat(-2,1,length(t));
y1=t;y2=t;
x3=t;x4=t;
y3=x3+1;y4=x4-1;
x5=cos(t);y5=sin(t);
subplot(1,2,1)
hold on 
plot(x1,y1);
plot(x2,y2);
plot(x3,y3);
plot(x4,y4);
plot(x5,y5);
axis equal
hold off

A3=[3 1; 6 2];
subplot(1,2,2)
hold on
point1=[x1;y1];
point1=A3*point1;
plot(point1(1,:),point1(2,:));
point2=[x2;y2];
point2=A3*point2;
plot(point2(1,:),point2(2,:));
point3=[x3;y3];
point3=A3*point3;
plot(point3(1,:),point3(2,:));
point4=[x4;y4];
point4=A3*point4;
plot(point4(1,:),point4(2,:));
point5=[x5;y5];
point5=A3*point5;
plot(point5(1,:),point5(2,:));
grid on
axis equal
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex14','-dpdf','-fillpage')

% Exercise 2
h=figure;
n=32;t=0:2*pi/n:2*pi;t2=0:2*pi/50:2*pi;
hold on
plot(cos(t),sin(t),'.','MarkerSize',10)
plot(cos(t2),sin(t2))
plot([zeros(1,length(t));1.5*cos(t)],[zeros(1,length(t));1.5*sin(t)],'-r')
A=[2 -1; -1 1+1];
points=A*[cos(t);sin(t)];
plot(points(1,:),points(2,:),'.','MarkerSize',10)
plot([cos(t);points(1,:)],[sin(t);points(2,:)],'-g')
axis([-2.5,2.5,-2.5,2.5])
axis equal
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex2','-dpdf','-fillpage')

% Exercise 3
h=figure;
t=-2*pi:pi/20:2*pi;
p1=-cos(t)-1;p2=-cos(t)+2.5;
p3=cos(t(t<pi/2 & t>-pi/2))+1;p4=cos(t(t<pi/2 & t>-pi/2))+2;
subplot(1,2,1)
hold on
plot(t,p1);
plot(t,p2);
plot(t(t<pi/2 & t>-pi/2),p3);
plot(t(t<pi/2 & t>-pi/2)+0.5,p4)
plot(t(t<pi/2 & t>-pi/2)-0.5,p4)
plot(t(t<pi/2 & t>-pi/2),p4+1)
[X,Y] = meshgrid(-15:1:15, -15:1:15);
X = X(:);
Y = Y(:);
plot(X,Y,'k:','MarkerSize',0.001);
axis equal
axis([-10,10,-10,10])
hold off

A2=[2 -1; -1 1+1];
subplot(1,2,2)
hold on
point1=[t;p1];
point1=A2*point1;
plot(point1(1,:),point1(2,:));
point2=[t;p2];
point2=A2*point2;
plot(point2(1,:),point2(2,:));
point3=[t(t<pi/2 & t>-pi/2);p3];
point3=A2*point3;
plot(point3(1,:),point3(2,:));
point4=[t(t<pi/2 & t>-pi/2)+0.5;p4];
point4=A2*point4;
plot(point4(1,:),point4(2,:));
point5=[t(t<pi/2 & t>-pi/2)-0.5;p4];
point5=A2*point5;
plot(point5(1,:),point5(2,:));
point6=[t(t<pi/2 & t>-pi/2);p4+1];
point6=A2*point6;
plot(point6(1,:),point6(2,:));
theta = pi/4;
rot = [cos(theta) -sin(theta); sin(theta) cos(theta)]; %// Define rotation matrix
rotate_val = rot*[X Y].'; %// Rotate each of the points
X_rotate = rotate_val(1,:); %// Separate each rotated dimension
Y_rotate = rotate_val(2,:);
plot(X_rotate, Y_rotate, 'k:','MarkerSize',0.001);
axis equal
axis([-10,10,-10,10])
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex3','-dpdf','-fillpage')

% Exercise 4 (1)
h=figure;
n=200;x=-1+2*rand(1,n);y=-1+2*rand(1,n);
P1=[x;y];
A=[2 -1; -1 1+1];
plot(P1(1,:),P1(2,:),'r.')
hold on
Pt=P1;
k=3;
for i=1:k
    Pt=A*Pt;
    plot(Pt(1,:),Pt(2,:),'b.')
end
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex411','-dpdf','-fillpage')

h=figure;
n=200;x=-1+2*rand(1,n);y=-1+2*rand(1,n);
P1=[x;y];
A=[2 -1; -1 1+1];
plot(P1(1,:),P1(2,:),'r.')
hold on
Pt=P1;
k=10;
for i=1:k
    Pt=A\Pt;
    plot(Pt(1,:),Pt(2,:),'b.')
end
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex412','-dpdf','-fillpage')

% Exercise 4 (2)
n=100;A4=100.*rand(n);
Y0=repmat(1/n,n,1);Y=Y0;
N=1000000;
for i=1:N
    Y=A4*Y;
    Y=Y./norm(Y,1);
end
norm(Y-Y0)<0.01

% Exercise 5
h=figure;
x=-5:0.1:5;
y=2*x-1;
x_p=x./(x-1);y_p=y./(y-1);
subplot(1,2,1)
hold on
plot(x,y)
plot(x,y+1)
plot(x,y-1)
hold off
subplot(1,2,2)
hold on
plot(x_p,y_p)
plot(x_p,(y+1)./y)
plot(x_p,(y-1)./(y-2))
hold off

t=0:2*pi/35:2*pi;
% t=t(t~=0 & t~=pi/2 & t~=pi & t~=3*pi/2 & t~=2*pi);
subplot(1,2,1)
hold on
plot(cos(t),sin(t))
plot(0.75*cos(t),0.75*sin(t))
plot(1.25*cos(t),1.25*sin(t))
axis equal
axis([-1.5,1.5,-1.5,1.5])
hold off
subplot(1,2,2)
hold on
plot(cos(t)./(cos(t)-1),sin(t)./(sin(t)-1))
plot(0.75*cos(t)./(0.75*cos(t)-1),0.75*sin(t)./(0.75*sin(t)-1))
plot(1.25*cos(t)./(1.25*cos(t)-1),1.25*sin(t)./(1.25*sin(t)-1))
axis equal
axis([-40,40,-40,40])
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex5','-dpdf','-fillpage')

% Exercise 6 (1)
h=figure;
al=0.1;
ch=(exp(al)+exp(-al))/2;sh=(exp(al)-exp(-al))/2;
hold on
t=0:2*pi/100:2*pi;
subplot(1,2,1)
plot(cos(t),sin(t))
axis equal
subplot(1,2,2)
plot((cos(t)*ch+sh)./(cos(t)*sh+ch),sin(t)./(cos(t)*sh+ch))
axis equal
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex61','-dpdf','-fillpage')

% Exercise 6 (2)
h=figure;
al=0.1;
ch=(exp(al)+exp(-al))/2;sh=(exp(al)-exp(-al))/2;
hold on
t=0:2*pi/50:2*pi;
plot(cos(t),sin(t))
plot([-1,1],[0,0],'-g')
plot(0,0,'r.')
x_M=0;y_M=0;k=100;
for i=1:k
    x_M=(x_M*ch+sh)/(x_M*sh+ch);
    y_M=y_M/(x_M*sh+ch);
    plot(x_M,y_M,'r.')
end
axis equal
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex62','-dpdf','-fillpage')

% Exercise 6 (3)
h=figure;
n=7;theta=0:2*pi/50:2*pi;t=0:2*pi/n:2*pi;
plot(cos(theta),sin(theta))
hold on
plot([zeros(1,length(t));cos(t)],[zeros(1,length(t));sin(t)],'-g')
x_M=(0*ch+sh)/(0*sh+ch);y_M=0;
plot(x_M,y_M,'r.')
plot([repmat(x_M,1,length(t));cos(t)],[repmat(y_M,1,length(t));sin(t)],'-k')
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex63','-dpdf','-fillpage')

% Exercise 7 (1)
h=figure;
f=@(z) (2*z+1)./(z+2);
t=0:2*pi/50:2*pi;
subplot(1,2,1)
hold on
plot(cos(t),sin(t))
x=-1:0.01:1;
plot(x,x+1)
axis equal
hold off
subplot(1,2,2)
z1=cos(t)+1i*sin(t);
z2=x+1i*(x+1);
hold on
plot(f(z1))
plot(f(z2))
axis equal
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex71','-dpdf','-fillpage')

% Exercise 7 (2)
h=figure;
f2=@(z) z.^2;
y_p=-2:0.01:2;
x1=repmat(-1,1,length(y_p));
x2=repmat(0.5,1,length(y_p));
x3=repmat(2,1,length(y_p));
x_p=-2:0.01:2;
y1=repmat(-1,1,length(x_p));
y2=repmat(0.5,1,length(x_p));
y3=repmat(2,1,length(x_p));
subplot(1,2,1)
hold on
plot(x1,y_p)
plot(x2,y_p)
plot(x3,y_p)
plot(x_p,y1)
plot(x_p,y2)
plot(x_p,y3)
hold off
subplot(1,2,2)
hold on
z1=x1+1i*y_p;
plot(f2(z1))
z2=x2+1i*y_p;
plot(f2(z2))
z3=x3+1i*y_p;
plot(f2(z3))
z4=x_p+1i*y1;
plot(f2(z4))
z5=x_p+1i*y2;
plot(f2(z5))
z6=x_p+1i*y3;
plot(f2(z6))
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex72','-dpdf','-fillpage')

% Exercise 7 (3)
h=figure;
f1=@(z) (z+1)./(z-1);f2=@(z) ((z+1)./(z-1)).^2;
x1=-5:0.1:-1.1;
y1=zeros(1,length(x1));
t=0:pi/50:pi;
x2=cos(t);y2=sin(t);
x3=1.1:0.1:5;
y3=zeros(1,length(x3));
subplot(1,3,1)
hold on
plot(x1,y1)
plot(x2,y2)
plot(x3,y3)
axis equal
hold off
subplot(1,3,2)
z1=x1+1e-20i*y1;
z2=x2+1i*y2;
z3=x3+1e-20i*y3;
hold on
plot(f1(z1))
plot(f1(z2))
plot(f1(z3))
axis equal
hold off
subplot(1,3,3)
hold on
plot(f2(z1))
plot(f2(z2))
plot(f2(z3))
axis equal
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex73','-dpdf','-fillpage')

% Exercise 8 (1)
h=figure;
t=0:pi/50:2*pi;n=5;
f=@(z) z.^n+6*z.^2+5*z+7;
f1=@(z) z.^n;
Roots=roots([1 0 0 6 5 7]);
subplot(1,2,1)
hold on
plot(cos(t),sin(t))
plot(norm(Roots(1))*cos(t),norm(Roots(1))*sin(t))
axis equal
hold off
subplot(1,2,2)
z_p=cos(t)+1i*sin(t);
z_p2=norm(Roots(1))*cos(t)+1i*norm(Roots(1))*sin(t);
hold on
plot(f(z_p))
plot(f(z_p2))
plot(f1(z_p2))
axis equal
grid on
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex81','-dpdf','-fillpage')

% Exercise 8 (2)
h=figure;
k=10;t=0:pi/100:2*pi;subplot(1,2,1)
hold on
for i=1:k
    plot(cos(t)/i,sin(t)/i)
end
axis equal
hold off
subplot(1,2,2)
hold on
for i=1:k
    z_pp=1.5*cos(t)/i+1i*1.5*sin(t)/i;
    plot(f(z_pp))
end
axis equal
grid on
hold off
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex82','-dpdf','-fillpage')

% Exercise 8 (3)
h=figure;
rl=10;rr=0;t=0:pi/100:2*pi;
while abs(rl-rr)>1e-5
    rmid=(rl+rr)/2;
    z_pm=rmid*cos(t)+1i*rmid*sin(t);
    fm=f(z_pm);
    [sortm,sortinm]=sort(abs(imag(fm)));
    first6=sortinm(1:6);
    rem=fm(first6);
    [~,index]=min(abs(real(rem)));
    rem=real(rem(index));
    if rem>0
        rr=rmid;
    else
        rl=rmid;
    end
end
rop=rr

syms a
x=real(f(rop*(cos(a)+i*sin(a))));
y=imag(f(rop*(cos(a)+i*sin(a))));
hold on
plot(t,subs(x,a,t))
plot(t,subs(y,a,t))
hold off
phi=vpasolve(x==0,a,[0,2*pi])
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex83','-dpdf','-fillpage')