% Exercise 1
N=100;primeNum=2:N;
for i=1:N
    temp=primeNum(i);
    Notprime=(mod(primeNum,temp)==0);
    if sum(Notprime)==1
        break;
    else
        Notprime=find(Notprime);
        Notprime=Notprime(2:end);
        index=zeros(1,length(primeNum));
        index(Notprime)=1;
        primeNum=primeNum(~logical(index));
    end
end
primeNum

% Exercise 2
N=10000;
seivePrime=PRIME(N);

% Exercise 3
N=10000;
tic
divPrime=DIVprime(N);
tD=toc;
tic
seivePrime=PRIME(N);
tS=toc;

% Exercise 4
N=100;mod2n_1=zeros(1,N-1);m=2;
for n=2:N
    mod2n_1(n-1)=mod(m^(n-1),n);
end
hold on
stem(2:N,mod2n_1),xlabel('n'),ylabel('2^{n-1} mod n')
cri=PRIME(N)-1;
all(mod2n_1(cri(m:end))==1)
stem(cri+1,mod2n_1(cri))
legend('n is not prime.','n is prime.')
hold off
print('Ex4','-dpdf','-fillpage')

% Exercise 5
n=4;N=1000;d=1;
m=1:N;remainder=zeros(1,N);
times=1;
while any(~remainder(PRIME(N))) & times<10000
    remainder(mod(n^d,m)==1 & ~remainder)=d;
    d=d+1;
    times=times+1;
end
hold on
stem(PRIME(N),remainder(PRIME(N))),xlabel('m (Prime)'),ylabel('d')
plot(1:N,1:N)
hold off
sum(remainder == (1:N)-1)
print('Ex51','-dpdf','-fillpage')
print('Ex52','-dpdf','-fillpage')
print('Ex53','-dpdf','-fillpage')
 
% Exercise 6
N=30;Mersen=2.^(2:N)-1;
Mersen=Mersen(isprime(Mersen))
all(isprime(2.^PRIME(100)-1))

% Exercise 7
n=7;M_n=2^n-1;u=zeros(1,n);
u(1)=4;
for i=2:n
    u(i)=mod(u(i-1)^2-2,M_n);
end
u(n-1)==0

n=11;M_n=2^n-1;u=zeros(1,n);
u(1)=4;
for i=2:n
    u(i)=mod(u(i-1)^2-2,M_n);
end
u(n-1)==0

% Exercise 8
isprime(2.^Mersen(1:4)-1)

% Exercise 9
n=5:9;F_n=2.^(2.^n)+1;
all(~isprime(F_n))

% Exercise 10
formula=@(n) n.^2+n+41;
n=0:100;
all(isprime(formula(n)))
intereP=formula(n);
sum(isprime(intereP(intereP<10000)))/length(PRIME(10000))

formula=@(n) n.^2-79*n+1601;
n=0:100;
all(isprime(formula(n)))
intereP=formula(n);
sum(isprime(intereP(intereP<10000)))/length(PRIME(10000))

formula=@(n) 6*n.^2+6*n+31;
n=0:100;
all(isprime(formula(n)))
intereP=formula(n);
sum(isprime(intereP(intereP<10000)))/length(PRIME(10000))

% Exercise 12
n=[100 1000 10000 100000];
Pi_n=zeros(1,4);Pi_n1_n2=zeros(1,4);
for i=1:4
    Pi_n(i)=length(PRIME(n(i)));
    Pi_n1_n2(i)=length(PRIME(n(i)+100))-length(PRIME(n(i)));
end
Pi_n
Pi_n1_n2


% Exercise 13
N=1000;
prim=PRIME(N);
d_n=prim(2:end)-prim(1:(end-1));
stem(prim(1:(end-1)),d_n)
print('Ex131','-dpdf','-fillpage')
unique(d_n)
histogram(d_n,30),ylabel('count')
print('Ex132','-dpdf','-fillpage')
max_inter=zeros(1,N-2);
for n=3:N
    prim=PRIME(n);
    d_n=prim(2:end)-prim(1:(end-1));
    max_inter(n-2)=max(d_n);
end
plot(3:N,max_inter),xlabel('N'),ylabel('Maximal Length of the intervals')
print('Ex133','-dpdf','-fillpage')

% Exercise 15
N=1000;Pi_n=zeros(1,N);
for n=2:N
    Pi_n(n)=length(PRIME(n));
end
hold on
plot(1:N,Pi_n),xlabel('n')
plot(1:N,1:N)
plot(1:N,sqrt(1:N))
legend('\pi(n)','y=x','y=sqrt(x)')
hold off
print('Ex151','-dpdf','-fillpage')
plot(1:N,Pi_n./sqrt(1:N))
plot((1:N)./log(1:N),Pi_n),xlabel('n/log(n)'),ylabel('\pi(n)')
print('Ex152','-dpdf','-fillpage')

% Exercise 16
syms k x
N=100;Pi_n=zeros(1,N-1);
Li_n=zeros(1,N-1);R_n=zeros(1,N-1);
for n=2:N
    Pi_n(n-1)=length(PRIME(n));
    f=@(x) 1./log(x);
    Li_n(n-1)=integral(f,2,n);
    R_n(n-1)=1+symsum(log(n)^k/(k*zeta(k+1)*factorial(k)),k,1,100);
end
hold on
plot(2:N,Pi_n)
plot(2:N,(2:N)./log(2:N))
plot(4:N,(4:N)./(log(4:N)-1.08366))
plot(2:N,Li_n(2:end))
plot(2:N,R_n(2:end))
legend('\pi(n)','n/log(n)','n/(log(n)-1.08366)','Li(n)','R(n)','Location','northoutside','Orientation','horizontal')
hold off
norm(Pi_n(end)-N/log(N))
norm(Pi_n(end)-N/(log(N)-1.08366))
norm(Pi_n(end)-Li_n(end))
norm(Pi_n(end)-R_n(end))
print('Ex16','-dpdf','-fillpage')

% Extra 1 Goldbach Conjecture
N=10000;Gold_num=zeros(N/2-2,3);
prim=PRIME(N);
prim=prim(2:end);
for n=3:N/2
    Gold_num(n-2,1)=2*n;
    for i=1:length(prim)
        for j=1:length(prim)
            if 2*n==prim(i)+prim(j)
                Gold_num(n-2,2)=prim(i);
                Gold_num(n-2,3)=prim(j);
            end
        end
    end
end
Gold_num

% Extra 2 Integer Factorization
factor(2^(2^5)-1)

% Extra 3 Perfect number
i=1;N=10000;Perf_num=zeros(1,N);
for n=2:N
    if sum(divisors(n))-n==n
        Perf_num(i)=n;
        i=i+1;
    end
end
Perf_num=Perf_num(logical(Perf_num));
Perf_num
% 6          28         496        8128
496==1^3+3^3+5^3+7^3
8128==1^3+3^3+5^3+7^3+9^3+11^3+13^3+15^3
