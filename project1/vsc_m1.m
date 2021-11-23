% Zhiguo Zhou 2021.11.23

clc
clear

N1=16;
n=0:15;
x=sin(2*pi*n/N1)+cos(4*pi*n/N1)-cos(6*pi*n/N1);

N2=64;
n2=0:63;
x2=sin(2*pi*n2/N2)+cos(4*pi*n2/N2)-cos(6*pi*n2/N2);

N3=128;
n3=0:127;
x3=sin(2*pi*n3/N3)+cos(4*pi*n3/N3)-cos(6*pi*n3/N3);

N4=8;
n4=0:7;
x4=sin(2*pi*n4/N4)+cos(4*pi*n4/N4)-cos(6*pi*n4/N4);

L1=0:15;
dft_16=fft(x,16);
L2=0:63;
dft_64=fft(x2,64);
L3=0:127;
dft_128=fft(x3,128);
L4=0:7;
dft_512=fft(x4,8);


nx=0:15;
K=512;
dw=2*pi/K;
k=0:511;
X=x*exp(1i*dw*nx'*k);
subplot(5,1,1);
plot(k*dw/(2*pi),abs(X));

subplot(5,1,2);
stem(L1/N1,abs(dft_16));

subplot(5,1,3);
stem(L2/64,abs(dft_64));

subplot(5,1,4);
stem(L3/128,abs(dft_128));

subplot(5,1,5);
stem(L4/8,abs(dft_512));
