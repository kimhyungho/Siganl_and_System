t=-1:0.01:4;          		% t를 -1부터 4까지 0.01 단위로 표현
x1=exp(-t);			% e^(-t)   e는 자연상수
subplot(3,1,1),plot(t,x1)	% 그래프 출력

x2=heaviside(t);		% 단위 계단 함수 heaviside()를 사용
subplot(3,1,2), plot(t,x2,'c')
axis([-1 4 -0.2 1.2])		% 그래프 범위조정

x=x1 .* x2;			% x1와 x2를 곱함
subplot(3,1,3), plot(t,x,'m')
axis([-1 4 -0.2 1.2])
