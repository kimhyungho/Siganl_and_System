n=-10:10; 		% -10~10 까지 1 단위로 표현
x=dirac(n+3)+3*dirac(n+1)+4*dirac(n)+3*dirac(n-1)+dirac(n-2)-2*dirac(n-3)+dirac(n-4);	% 임펄스 함수 dirac함수를 이용한 식
stem(n, x)		% 이산신호 그래프 출력
axis([-10 10 -3 5])	% 그래프를 조정
