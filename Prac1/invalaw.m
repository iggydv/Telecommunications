function x = invalaw(y, A)
    st = 1 - 2*(y < 0);
    y = abs(y);
    
    la = 1+log(A);
    a = la/A*y;
    b = 1/A*exp(y*la-1);
    
    x = (y <= 1/la).*a + (y > 1/la).*b;
    x = st .* x;
end


