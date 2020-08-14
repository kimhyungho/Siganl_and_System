[x,fs]=audioread('guitar.wav');
[N,a]=size(x);
t=0 : 1/fs : N/fs-1/fs ;
plot(t, x)
X=fftshift(fft(x));
f=-N/2:N/2-1;
figure
plot(f, abs(X))
axis([-20000 20000 0 600])
R=12000;
H=ones(1, N);
H(N/2-R:N/2+R)=0;
figure
plot(H)
axis([0 250000 -0.2 1.2])
Y = X .* H ';
figure
plot(t, Y)
x2=ifft(fftshift(Y));
figure
plot(t, x2)
