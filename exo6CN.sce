function [A] = gausskij(A,b)

    for( k = 1 : n-1)
        for (i = k + 1 : n)
            A(i, k) = A(i, k)/A(k, k);
        end
        for (i = k + 1 : n)
            for (j = k + 1 : n)
                A(i,j) = A(i,j) -A(i, k) *A(k, j);
            end
        end
    
end



endfunction

n=10

A=rand(10,10);

xex = rand(10,1);

b = A*xex;

x = gausskij(A,b);
 disp(x)
