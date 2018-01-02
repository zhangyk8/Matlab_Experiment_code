% Exercise 1
N=[20,50,100,200,500];
figure('PaperSize',[15 10])
hold on
for i=1:5
    F=zeros(1,N(i));
    F([1,2])=[1,1];
    for j=2:(N(i)-1)
        F(j+1)=F(j)+F(j-1);
    end
    t=1:N(i);
    subplot(3,2,i),plot(t,F)
    ylabel('F_n'),xlabel(['N=',num2str(N(i))])
end
hold off
print('Ex1','-dpdf','-fillpage')

% Exercise 2
N=[200,500,1000];
figure('PaperSize',[15 10])
s=char();
hold on
for i=1:3
    F=zeros(1,N(i));
    F([1,2])=[1,1];
    for j=2:(N(i)-1)
        F(j+1)=F(j)+F(j-1);
    end
    t=1:N(i);
    subplot(2,2,i),plot(t,log(F))
    ylabel('log(F_n)'),xlabel(['N=',num2str(N(i))])
    linearCoef=polyfit(t,log(F),1);
    s=char(s,poly2str(linearCoef,'x'));
end
s
exp(linearCoef)
print('Ex2','-dpdf','-fillpage')

% Exercise 3
c=2/(1+sqrt(5));
norm(c*((1+sqrt(5))/2)^2-1)>0.1

% Exercise 4
N=1000;
F=zeros(1,N);
F_real=@(n) 1/sqrt(5).*(((1+sqrt(5))/2).^n-((1-sqrt(5))/2).^n);
F_r=F_real(1:N);
F([1,2])=[1,1];
 for j=2:(N-1)
     F(j+1)=F(j)+F(j-1);
 end
norm(log(F)-log(F_r))<1e-5

% Exercise 5
m=51;N=1000;
M=mod(F,m);
r=randi([1 N],1,2);
Mran=M(r);
t=-2*pi:pi/20:2*pi;
subplot(3,1,1),plot(t,sin(Mran(1)*t))
title('sin(M t)'),xlabel(['sin(',num2str(Mran(1)),'t)'])
subplot(3,1,2),plot(t,sin(Mran(2)*t))
xlabel(['sin(',num2str(Mran(2)),'t)'])
subplot(3,1,3),plot(t,sin(Mran(1)*t)+sin(Mran(2)*t))
xlabel(['sin(',num2str(Mran(1)),'t)+sin(',num2str(Mran(2)),'t)'])
print('Ex5','-dpdf','-fillpage')

% Exercise 6

% Exercise 7
N=100;
n=1:N;
S=cumsum(1./n);
plot(n,S,'r')
hold on
plot(n,n,'b')
plot(n,sqrt(n),'g')
plot(n,nthroot(n,4),'y')
legend('Harmonic series S_n','y=x','y=sqrt(x)','y=nthroot(x,4)')
hold off
print('Ex7','-dpdf','-fillpage')

% Exercise 8
N=10000;n=1:N;
k=2;
S_2n=cumsum(1./(1:2^k*N));
S_2n=S_2n(~mod(1:2^k*N,2^k));
S_n=cumsum(1./n);
a_n=S_2n-S_n;
norm(a_n(end)-k*log(2))<1e-4

N=20;S_2kn=zeros(1,N);t=zeros(1,N);n=2;
for k=1:N
    S_2kn(k)=sum(1./(1:2.^k*n));
end
plot(1:N,S_2kn,'.r')
hold on
p=polyfit(1:N,S_2kn,1);
plot(1:N,polyval(p,1:N))
legend('S_{2^k n}','Linear Fit')
hold off
print('Ex8','-dpdf','-fillpage')

% Exercise 9 (1)
N=10000000;
n=1:N;
S_n=cumsum(1./n);
J_n=ceil(S_n);
S_2n=cumsum(1./(1:2*N));
S_2n=S_2n(~mod(1:2*N,2));
J_2n=ceil(S_2n);
b_n=J_2n-J_n;
m=zeros(1,100);
for i=1:100
    k=i;
    while J_n(k)==J_n(i)
        k=k+1;
    end
    m(i)=k;
end
m./n(1:100)
% Exercise 9 (2)
L_m=zeros(1,15);
for m=1:15
    L=find(J_n==m);
    L_m(m)=L(end);
end
L_m((1:14)+1)./L_m(1:14)
plot(1:15,log(L_m)),ylabel('L(m)'),xlabel('m')
print('Ex9','-dpdf','-fillpage')

% Exercise 10
alpha=1/2;N=100;n=1:N;
S_n=cumsum(1./n.^alpha);
subplot(1,2,1),plot(n,S_n),xlabel('n')
hold on
plot(n,n.^(1-alpha)./(1-alpha))
legend('S_n','n^{(1-\alpha)}/(1-\alpha)','interpreter','latex')
subplot(1,2,2),plot(n.^(1-alpha)./(1-alpha),S_n),xlabel('n^{(1-\alpha)}/(1-\alpha)'),ylabel('S_n')
hold off
print('Ex10','-dpdf','-fillpage')

% Exercise 11
n=input('Please input a positive integer:');i=1;
a=Pro3nPlus1(n)

% Exercise 12
k=randi([1,1000],1);
n=[4*k+1,4*k+3,8*k+1,8*k+3,8*k+5,8*k+7,16*k+1,16*k+3];
m=zeros(1,length(n));
for k=1:length(n)
    a=Pro3nPlus1(n(k));
    m(k)=any(a<n(k));
end
all(m)

% Exercise 13
N=1000;
F_n=zeros(1,N);
for n=1:N
    F_n(n)=length(Pro3nPlus1(n))-1;
end
stem(1:N,F_n),xlabel('n'),
hold on
plot(1:N,1:N),legend('F(n)','y=x')
hold off
print('Ex13','-dpdf','-fillpage')

% Exercise 14
N=10000;
G_n=zeros(1,N);
G_n(1)=1;
for n=2:N
    index=find(Pro3nPlus1(n)<n);
    G_n(n)=index(1)-1;
end
plot(1:N,G_n./log(1:N)),xlabel('n'),ylabel('G(n)/log(n)')
print('Ex14','-dpdf','-fillpage')

% Exercise 15
N=1000;
T_n=zeros(1,N);
for n=1:N
    T_n(n)=max(Pro3nPlus1(n));
end
subplot(1,2,1),plot(1:N,T_n),xlabel('n'),ylabel('T(n)')
subplot(1,2,2),plot(1:N,T_n./(1:N).^2),xlabel('n'),ylabel('T(n)/n^2')
print('Ex15','-dpdf','-fillpage')

% Exercise 16
N=1000000;
O_n=zeros(1,N);E_n=zeros(1,N);
for n=1:N
    a=n;
    while a~=1
        if mod(a,2)==0
            a=a/2;
            E_n(n)=E_n(n)+1;
        else
            a=3*a+1;
            O_n(n)=O_n(n)+1;
        end
    end
end
max(O_n./E_n)
plot(1:N,O_n./E_n),xlabel('n'),ylabel('O(n)/E(n)')
print('Ex16','-dpdf','-fillpage')