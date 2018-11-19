%p = [1 1 1 1 1 0 0 0 0 0]
%a= [-1 -1 +1 -1 +1 +1 +1 -1 +1 -1]
%X = kron(a, p)
%t = 0 : 1 : 99;
%plot(t, X)
%D = (randn(1,1000) > 0)

% 4 Datatransmissie van blokpulse
%Fs = 11025
%n = 10
%X = (randn(1,100000) > 0)
%X = X*2 - 1
%t = 0 : 1 : 99999;
%plot(t, X)

%t = [0:0.01:100]
%a = sin(t);
%b = square(t);

%Fs=10000

t = [0:1:999999];
%a = sin(t);
%b = square(t);

%X2 = kron(a, p);
%X3 = kron(b, p);
D = (randn(1,100000) > 0);
a = D*2 - 1;
b = ones(1,length(a));
p = [1 1 1 1 1 0 0 0 0 0];
X2 = kron(a, p);

%Z = kron(X2, [1;0]);

Xf = abs(fft(X2));

%Xf = Xf(1:500000);

Fs = 11025;

%sound(Z,Fs);


N = 10;
Rb=Fs/N;

f = 0:(1/999999)*2*5000:1*5000;




length(abs(fft(X2)))


t = [0:1:999999];
%t2 = [0:1:99999];
%b = square(t2);
%figure(2)
%plot(t2,b)

p2 = [0 0 1 1 1 1 1 0 0 0];
b2 = kron(b, p2)-0.5;


%figure(1);
%plot(t,X2,'g',t, b2, 'r');

Z = [b2;X2];

sound(Z,Fs);

% X = (randn(1,5) > 0);
% X = X*2 - 1;
% t = [0:1:49];
% t2 = [0:1:4];
% b = square(t2);
% a = length(b)
% p2 = [0 0 1 1 1 1 1 0 0 0];
% 
% b2 = kron(b, p2);
% X2 = kron(X, p);
% 
% figure(1);
% plot(t,X2,'g');
% hold
% plot(t,b2,'r');


X = rcosflt(a,1102.5,11025,'fir',0.5);
plot(abs(fft(X)))
plot((X))
Z = [b2;X];
sound(Z,Fs);













