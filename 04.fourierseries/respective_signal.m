t=-2:0.001:5;
x1=-4/pi*sin(pi*t);
subplot(5,1,1), plot(t,x1)
axis([-1 5 -2 2])

x3=-4/(3*pi)*sin(3*pi*t);
subplot(5,1,2), plot(t,x3)
axis([-1 5 -2 2])

x5=-4/(5*pi)*sin(5*pi*t);
subplot(5,1,3), plot(t,x5)
axis([-1 5 -2 2])

x7=-4/(7*pi)*sin(7*pi*t);
subplot(5,1,4), plot(t,x7)
axis([-1 5 -2 2])

x=x1+x3+x5+x7;
subplot(5,1,5), plot(t,x)
axis([-1 5 -2 2])
