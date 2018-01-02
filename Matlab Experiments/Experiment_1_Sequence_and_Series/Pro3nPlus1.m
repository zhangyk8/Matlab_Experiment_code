function a = Pro3nPlus1(n)

a(1)=n;i=1;
while a(i)~=1
    if mod(a(i),2)==0
        a(i+1)=a(i)/2;
    else
        a(i+1)=3*a(i)+1;
    end
    i=i+1;
end

end

