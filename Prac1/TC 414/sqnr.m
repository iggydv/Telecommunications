%SQNR
function r = sqnr(X, n)
    pf = sigpow(X);
    r = 3 * (2.^n).^2 * pf;