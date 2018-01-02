function mandelbrot(times,inter_leng)

M=3;
pin=linspace(-M,M,inter_leng);
qin=linspace(-M,M,inter_leng);
[ptrans,qtrans]=meshgrid(pin,qin);
count=ones(size(ptrans));
n=size(ptrans);
for i=1:n(1)
    for j=1:n(1)
        p=ptrans(i,j);q=qtrans(i,j);
        x=0;y=0;
        for k=1:times
            if x^2+y^2>M^2
                break;
            end
            temp=x;
            x=x^2-y^2+p;
            y=2*temp*y+q;
        end
        count(i,j)=k;
    end
end
count=log(count);

fig = gcf;
fig.Position = [90 90 600 600];
imagesc(pin, qin, count);
colormap( [jet();flipud( jet() );0 0 0] );
axis('square','equal','image');
% axis off