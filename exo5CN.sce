
function [x] = gausskij3b(A,b)


n=size(A,1)  
mik=0 

for (k = 1 : n - 1)
    for i = k + 1 : n
        mik = A(i, k )/A(k , k );
        b(i) = b(i) - mik * b(k );
        for j = k + 1 : n
            A(i, j) = A(i, j) - mik * A(k , j);
end
    end 
        end


x=usolve(A,b);

endfunction

function [x] = usolve(U,b)
  
n=size(U,1);  
x = zeros(size(b,1),1);

x(n) = b(n)/U(n,n);

   for (i=(n-1) : -1: 1)
        
      x(i) = (b(i)-U (i, (i + 1) : n) * x ((i + 1) : n)) /U(i, i);
    
end
   
endfunction 


n=10

A=rand(10,10);

xex = rand(10,1);

b = A*xex;

x = gausskij3b(A,b);

fErrorB = norm(xex-x)/norm(xex)

bErrorB = norm(b-A*x)/norm(b)
disp(fErrorB)
