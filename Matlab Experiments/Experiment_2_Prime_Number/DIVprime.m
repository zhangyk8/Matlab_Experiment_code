function Prime2 = DIVprime(N)

Prime2=zeros(1,N);
Prime2(1)=2;i=2;
for m=3:2:N
    cri=mod(m,Prime2(Prime2~=0));
    if all(cri)
        Prime2(i)=m;
        i=i+1;
    end
end
Prime2=Prime2(Prime2~=0);

end

