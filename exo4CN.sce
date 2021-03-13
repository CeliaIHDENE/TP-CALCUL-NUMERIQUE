function [x] = usolve(U,b)
  
n=size(U,1);  
x = zeros(size(b,1),1);

x(n) = b(n)/U(n,n);

   for (i=(n-1) : -1: 1)
        
      x(i) = (b(i)-U (i, (i + 1) : n) * x ((i + 1) : n)) /U(i, i);
    
end
 
endfunction 

function [x]= lsolve(L,b)
    
n=size(L,1)  
x(1) = b(1)/L(1, 1);

   for i = 2 : n
        x(i) = (b(i)-L(i, 1 : (i -1)) * x (1 :(i-1))) /L(i, i)
    end 

endfunction
n=3

A=rand(n,n)
b = rand(n,1)


U = triu(A)
L = tril(A)

b1 = U*b;

x = usolve(U,b);

fErrorB = norm(b-x)/norm(b)

bErrorB = norm(b1-A*x)/norm(b1)


