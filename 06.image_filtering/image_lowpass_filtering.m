system('convert totoro.jpg totoro.pgm');
x=imread('totoro.pgm');
imshow(x)

[YY, XX] = size(x)
X=fftshift(fft2(x));
image1 = mat2gray(log(1+abs(X)));
figure
imshow(image1)
figure
mesh(image1)

R=50;
Yc=round(YY/2);
Xc=round(XX/2);
H=zeros(YY, XX);
H(Yc-R:Yc+R, Xc-R:Xc+R)=1;
figure
mesh(H)

result = X .* H;
result1 = mat2gray(log(1+abs(result)));
figure                                     
imshow(result1)

result2=ifft2(fftshift(result));
image2=mat2gray(abs(result2));
figure
imshow(image2)