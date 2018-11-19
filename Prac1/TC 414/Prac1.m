%Quantisation
t = linspace(0,2*pi, 10000);
f = sin(t);
fq = quant(f, 4);
e = f - fq;

testdata = [-1 -0.5 -0.001 0 0.001 0. 1];
quanttestdata = quant(testdata, 4)

figure()
plot(t, fq, t, f) %Fig 1
figure()
plot(t, fq, t, f, t, e) %Fig 2

n = linspace(1,16,16);

fSQNR = sqnr(f, n)
fSQNRdb = 10 * log10(fSQNR)

figure()
plot(n, fSQNR) %Fig 3
figure()
plot(n, fSQNRdb) %Fig 4

%Quantisation of speech
[X, Fs] = wavread('cantdo.wav');
Xn = length(X);
tx = linspace(0,(Xn-1)/Fs,Xn);

figure();
plot(tx,X); %Fig 5

figure()
hist(X,50); %Fig 6

sSQNR = sqnr(X, 4)
sSQNRdb = 10*log10(sSQNR)

[psdx, freqx] = psd(X, Fs);
figure() % Fig 7
plot(freqx, psdx)

[psdqn, freqqn] = psd(X-quant(X, 4), Fs);
figure() % Fig 8
plot(freqqn, psdqn)

%Compander
companded = alaw(f, 55);
uncompanded = invalaw(companded, 55);

figure() %Fig 9
plot(t, f)
figure() %Fig 10
plot(t, companded)
figure() %Fig 11
plot(t, f-uncompanded)

compandx = alaw(X, 5);
quantx = quant(compandx, 4);
uncompandx = invalaw(quantx, 5);
noisex = X - uncompandx;
noisepx = sigpow(noisex);

scSQNR = sigpow(X)/noisepx
scSQNRdb = 10*log10(scSQNR)