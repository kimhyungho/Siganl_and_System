t=0:0.01:1;                    % 독립변수 시간t
f=2;                           % 주파수 = 2
x1=cos(2*pi*f*t);              % 샘플링 전 함수 x1
subplot(3,1,1), plot(t, x1)    % 샘플링 전 연속신호를 그래프로 출력
axis([0 1 -1.5 1.5])           % 그래프를 편하게 보기위해 폭 설정
fs=16;                         % 샘플링수를 주파수 두배 보다 큰 수로 설정
n=0:1:fs;                      % 1초 동안 취하는 샘플링 값
x2=cos(2*pi*f*n/fs);           % 샘플링 할 함수 x2
subplot(3,1,2), stem(n, x2)    % 샘플링 된 이산신호를 그래프로 출력
axis([0 fs -1.5 1.5])
subplot(3,1,3), plot(n/fs, x2) % 샘플링 된 연속신호 그래프로 출력
axis([0 1 -1.5 1.5])
