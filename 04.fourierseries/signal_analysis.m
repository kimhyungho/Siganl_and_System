t=-3:0.001:6;

x=1;
for n=1:2:10
 x=x-4/(n*pi)*sin(n*pi*t);
 subplot(2,1,1),plot(t,x,'r')
 axis([-2 5 -1 3])
 end

x=0;
for n=11:2:100
 x=x-4/(n*pi)*sin(n*pi*t);
 subplot(2,1,2), plot(t,x,'c')
 axis([-2 5 -1 3])
end
