function primeNum = PRIME(N)

primeNum=2:N;
for i=1:N
    a=primeNum(i);
    Notprime=(mod(primeNum,a)==0);
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

end

