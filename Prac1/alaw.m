function y = alaw(x, A)
    st = 1 - 2*(x < 0);
    x = abs(x);
    
    a = A*x./(1+log(A));
    
    b = (1+log(A.*x))./(1+log(A));
    b(b==-Inf)=0;
    
    y = (x <= (1/A)).*a + (x > (1/A)).*b;
    y = st .* y;
end


