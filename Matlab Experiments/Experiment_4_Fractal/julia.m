function julia(arg1,arg2,p,q)

N=arg1;
M=max(2,sqrt(p^2+q^2));
x1=linspace(-M,M,arg2);
y1=linspace(-M,M,arg2);
[xtrans,ytrans]=meshgrid(x1,y1);
t=ones(size(xtrans));
n=size(xtrans);
for i=1:n(1)
    for j=1:n(2)
        x=xtrans(i,j);
        y=ytrans(i,j);
        for k=1:N
            if x^2+y^2>M^2
                break;
            end
            temp=x;
            x=x^2-y^2+p;
            y=2*temp*y+q;
        end
        t(i,j)=k;
    end
end
t=log(t);

fig = gcf;
fig.Position = [90 90 600 600];
imagesc(x1,y1,t);
colormap( [jet();flipud( jet() );0 0 0] );
axis('equal','image');
% axis off