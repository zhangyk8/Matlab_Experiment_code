% Exercise 1 (Koch)
N=10;Koch=cell(N,1);
Koch{1,1}=[-3 0;3 0];
for i=1:N-1
    points=Koch{i,1};
    n=size(points);
    new_p=zeros(4*n(1)-3,2);
    new_p(1,:)=points(1,:);
    for j=1:n(1)-1
        new_p(4*j-2,:)=(2*points(j,:)+points(j+1,:))/3;
        new_p(4*j,:)=(points(j,:)+2*points(j+1,:))/3;
        new_p(4*j-1,1)=(points(j,1)+points(j+1,1))/2+(points(j,2)-points(j+1,2))*sqrt(3)/6;
        new_p(4*j-1,2)=(points(j,2)+points(j+1,2))/2+(points(j+1,1)-points(j,1))*sqrt(3)/6;
        new_p(4*j+1,:)=points(j+1,:);
    end
    Koch{i+1,1}=new_p;
end
re_p=Koch{end,1};
h=figure;
plot(re_p(:,1),re_p(:,2))
axis equal
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex11','-dpdf','-fillpage')

% Exercise 1 (Sierpinski Triangle)
N=6;vertex=[-1;1;sqrt(-3)];
h=figure;
plot(triangle(vertex,N))
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex12','-dpdf','-fillpage')
% fill(vertex(:,1),vertex(:,2),'k')

% Exercise 2
N=10;Koch=cell(N,1);
Koch{1,1}=[-1 1;1 1;0 1-sqrt(3);-1 1];
for i=1:N-1
    points=Koch{i,1};
    n=size(points);
    new_p=zeros(4*n(1)-3,2);
    new_p(1,:)=points(1,:);
    for j=1:n(1)-1
        new_p(4*j-2,:)=(2*points(j,:)+points(j+1,:))/3;
        new_p(4*j,:)=(points(j,:)+2*points(j+1,:))/3;
        new_p(4*j-1,1)=(points(j,1)+points(j+1,1))/2+(points(j,2)-points(j+1,2))*sqrt(3)/6;
        new_p(4*j-1,2)=(points(j,2)+points(j+1,2))/2+(points(j+1,1)-points(j,1))*sqrt(3)/6;
        new_p(4*j+1,:)=points(j+1,:);
    end
    Koch{i+1,1}=new_p;
end
re_p=Koch{end,1};
A=polyarea(re_p(:,1),re_p(:,2));
peri=0;
for i=1:length(re_p)-1
    peri=peri+sqrt(sum((re_p(i,:)-re_p(i+1,:)).^2));
end
h=figure;
plot(re_p(:,1),re_p(:,2))
title(['Area = ' num2str(A),', Perimeter=' num2str(peri)])
axis image
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex21','-dpdf','-fillpage')

% Minkowski 
N=6;Mink=cell(N,1);
Mink{1,1}=[-1;-i;1;i;-1];
for i=1:N-1
    z=Mink{i,1};
    n=length(z);
    new_point=zeros(8*(n-1)+1,1);
    new_point(1)=z(1);
    for j=1:n-1
        theta=atan(imag(z(j+1)-z(j))/real(z(j+1)-z(j)));
        new_point(8*j-6)=3/4*z(j)+1/4*z(j+1);
        new_point(8*j-5)=3/4*z(j)+1/4*z(j+1)+1i*(z(j+1)-z(j))/4;
        new_point(8*j-4)=1/2*z(j)+1/2*z(j+1)+1i*(z(j+1)-z(j))/4;
        new_point(8*j-3)=1/2*z(j)+1/2*z(j+1);
        new_point(8*j-2)=1/2*z(j)+1/2*z(j+1)-1i*(z(j+1)-z(j))/4;
        new_point(8*j-1)=(z(j)+3*z(j+1))/4-1i*(z(j+1)-z(j))/4;
        new_point(8*j)=(z(j)+3*z(j+1))/4;
        new_point(8*j+1)=z(j+1);
    end
    Mink{i+1,1}=new_point;
end
re_mink=Mink{end,1};
h=figure;
plot(re_mink)
axis equal
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex31','-dpdf','-fillpage')

% Exercise 3
h=figure;
subplot(1,2,1),plot(hilbert(5))
title('N=5')
axis equal
axis image
subplot(1,2,2),plot(hilbert(10))
title('N=10')
axis equal
axis image
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex32','-dpdf','-fillpage')

% Exercise 4
h=figure;
s1=[1.25;1.5;1.75];N=50;lambda=3;
syms s x k
W_x = symsum((lambda.^((s-2).*k)).*sin(lambda.^k*x),k,1,N);
t=-1:0.01:1;
f=subs(subs(W_x,s,s1),x,t);
plot(t,f)
legend('s=1.25','s=1.5','s=1.75')
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex4','-dpdf','-fillpage')

% Exercise 5
h=figure;
subplot(2,3,1),julia(50,200,0,1)
title('p=0,q=1')
subplot(2,3,2),julia(50,200,-1,0)
title('p=-1,q=0')
subplot(2,3,3),julia(50,200,0.11,0.66)
title('p=0,11,q=0.66')
subplot(2,3,4),julia(50,200,-0.10281,0.95723)
title('p=-0.10281,q=0.95723')
subplot(2,3,5),julia(50,250,-1.25,-0.01)
title('p=-1.25,q=-0.01')
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex5','-dpdf','-fillpage')

% Exercise 6
mandelbrot(50,500)
miu=ginput(4);
h=figure;
subplot(2,2,1),julia(50,250,miu(1,1),miu(1,2))
title('Interior')
subplot(2,2,2),julia(50,250,miu(2,1),miu(2,2))
title('Exterior')
subplot(2,2,3),julia(50,250,miu(3,1),miu(3,2))
title('Boundary')
subplot(2,2,4),julia(50,250,miu(4,1),miu(4,2))
title('Inside a burgeon')
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex62','-dpdf','-fillpage')

% Exercise 7
h=figure;
subplot(1,3,1),mandelbrot_N(50,500,3)
title('order=3')
pq1=ginput(1);
subplot(1,3,2),mandelbrot_N(50,500,4)
title('order=4')
pq2=ginput(1);
subplot(1,3,3),mandelbrot_N(50,500,5)
title('order=5')
pq3=ginput(1);
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex71','-dpdf','-fillpage')

h=figure;
subplot(1,3,1),julia_N(50,500,pq1(1),pq1(2),3)
title(sprintf('p=%1.2f,q=%1.2f,\n order=%1.0f',pq1(1),pq1(2),3))
subplot(1,3,2),julia_N(50,500,pq2(1),pq2(2),4)
title(sprintf('p=%1.2f,q=%1.2f,\n order=%1.0f',pq2(1),pq2(2),4))
subplot(1,3,3),julia_N(50,500,pq3(1),pq3(2),5)
title(sprintf('p=%1.2f,q=%1.2f,\n order=%1.0f',pq3(1),pq3(2),5))
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex72','-dpdf','-fillpage')

% Exercise 8
N=10000000;z=zeros(N,1);
A=1/2+1i*sqrt(3);B=-1;C=1;z(1)=C;
prob=rand(N-1,1);
for k=1:N-1
    if prob(k)<1/3
        z(k+1)=(z(k)+A)/2;
    elseif prob(k)>=1/3 && prob(k)<2/3
        z(k+1)=(z(k)+B)/2;
    else
        z(k+1)=(z(k)+C)/2;
    end
end
h=figure;
subplot(1,2,1),plot(z,'.')
text(-1.05,-0.03,'B','Color','r')
text(1.05,-0.03,'C','Color','r')
text(0.6,1.75,'A','Color','r')
title('P_A=P_B=P_C=1/3')
prob=rand(N-1,1);
for k=1:N-1
    if prob(k)<0.5
        z(k+1)=(z(k)+A)/2;
    elseif prob(k)>=0.5 && prob(k)<0.97
        z(k+1)=(z(k)+B)/2;
    else
        z(k+1)=(z(k)+C)/2;
    end
end
subplot(1,2,2),plot(z,'.')
text(-1.05,-0.03,'B','Color','r')
text(1.05,-0.03,'C','Color','r')
text(0.6,1.75,'A','Color','r')
title('P_A=0.5, P_B=0.47,P_C=0.03')
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex8','-dpdf','-fillpage')

% Exercise 9
h=figure;
s=1/2+1i*1/2;p1=1/2;
N=100000;w=zeros(N,1);prob=rand(N-1,1);
for k=1:N-1
    if prob(k)<p1
        w(k+1)=s*w(k)+1;
    else
        w(k+1)=s*w(k)-1;
    end
end
plot(w,'.')
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex9','-dpdf','-fillpage')

% Exercise 10
h=figure;
C=i;p1=1/2;
N=10000000;w=zeros(N,1);prob=rand(N-1,1);
for k=1:N-1
    if prob(k)<p1 
        w(k+1)=sqrt(w(k)-C);
    else
        w(k+1)=sqrt(w(k)+C);
    end
end
subplot(1,2,1),plot(w,'.','MarkerSize',6)
title('C=i')
C=0.11+1i*0.66;p1=1/2;
N=10000000;w=zeros(N,1);prob=rand(N-1,1);
for k=1:N-1
    if prob(k)<p1 
        w(k+1)=sqrt(w(k)-C);
    else
        w(k+1)=sqrt(w(k)+C);
    end
end
subplot(1,2,2),plot(w,'.','MarkerSize',6)
title('C=0.11+0.66i')
set(h,'Units','Inches');
pos = get(h,'Position');
set(h,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
print('Ex10','-dpdf','-fillpage')