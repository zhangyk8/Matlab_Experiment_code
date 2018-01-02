function mandelbrot_N(times,inter_leng,N)

M=3;
pin=linspace(-M,M,inter_leng);
qin=linspace(-M,M,inter_leng);
[ptrans,qtrans]=meshgrid(pin,qin);
count=ones(size(ptrans));
z0=ptrans+1i*qtrans;

z=z0;
for n=1:times
    z=z.^N+z0;
    inside=abs(z)<=M^2;
    count=count+inside;
end
count=log(count);

fig = gcf;
fig.Position = [90 90 600 600];
imagesc(pin, qin, count);
colormap( [jet();flipud( jet() );0 0 0] );
axis('square','equal','image');
% axis off