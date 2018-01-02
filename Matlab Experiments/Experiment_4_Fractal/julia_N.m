function julia_N(times,inter_leng,p,q,N)

M=max(2,sqrt(p^2+q^2));
x1=linspace(-M,M,inter_leng);
y1=linspace(-M,M,inter_leng);
[xtrans,ytrans]=meshgrid(x1,y1);
count=ones(size(xtrans));
z=xtrans+1i*ytrans;

for n=1:times
    z=z.^N+p+1i*q;
    inside=abs(z)<=M^2;
    count=count+inside;
end
count=log(count);

fig = gcf;
fig.Position = [90 90 600 600];
imagesc(x1,y1,count);
colormap( [jet();flipud( jet() );0 0 0] );
axis('equal','image');
% axis off