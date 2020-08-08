t=-3:0.001:6;

x=1;
for n=1:2:100
 x=x-4/(n*pi)*sin(n*pi*t);
 plot(t,x,'r')
 axis([-2 5 -0.5 3])
end
