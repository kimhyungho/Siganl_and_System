t=-2:0.001:2;
x=1;
sign=2;
for n = 1:2:100
 x=x+4/(n*pi)*cos(2*pi*n*t)*(-1)^sign;
 sign=sign+1;
 plot(t, x)
 axis([-2 2 -0.3 2.5])
end
grid on
set(gca, 'xtick', -2:1/4:2)
