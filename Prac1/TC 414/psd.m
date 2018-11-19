function [psdx, freqx] = psd(x, Fs)
    N = length(x);
    xdft = fft(x);
    xdft = xdft(1:N/2+1);
    psdx = (1/(Fs*N)) * abs(xdft).^2;
    psdx(2:end-1) = 2*psdx(2:end-1);
    freqx = 0:Fs/length(x):Fs/2;