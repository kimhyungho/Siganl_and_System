t=-1:0.001:1;
x=1;
sign = 2;
for n=1:2:100
x=x+4/(n*pi)*cos(2*pi*n*t)*(-1)^sign;
sign=sign+1;
subplot(2,1,1), plot(t, x)
axis([-1 1 -0.2 2.2])
end
grid on
set(gca, 'xtick', -1:1/4:1)

f=-1000:0.5:1000;
X=fftshift(fft(x))/4001;
subplot(2,1,2), stem(f, real(X), 'r.')
axis([-15 15 -0.6 1.2])
grid on
set(gca, 'xtick', -14:1:14)
