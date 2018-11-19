function Xq = quant(X,n)
    % QUANT   Perform n-bit quantisation of a signal with amplitudes
    %         in the range [-1,+1].
    %         Syntax: Xq = quant(X,n)

    tweak = 1 - 1e-15;
    L = 2^n;
    Xq = (floor( (X*L/2)*tweak )+0.5) / (L/2);