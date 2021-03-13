
//declaration de la fonctoion

function [C] =matmat3b(A,B)
printf ( 'Matmat3b ')
N=3
m=3
p=3
C=zeros(m,N);

    for(i=1:m)
        for (j=1:N)
          for (k=1:p)
                 C(i, j) = A(i, k )*B(k , j) + C(i, j);
          
            end    
        end
end

endfunction


function [C] =matmat2b(A,B)
printf ( 'Matmat2b ')
N=size(A,1);
m=3
p=3

C=zeros(m,N);
    for(i=1:m)
        for(j=1:N)

                C(i, j) = A(i, :)*B(:, j) + C(i, j);
          
          end
end



endfunction


function [C] =matmat1b(A,B)
 printf ( 'Matmat1b ')
N=3
m=3
C=zeros(m,N);
   for (i = 1 : N)
        C(i,:) = A(i, :)*B + C(i, :);
    end

endfunction

A=rand(3,3);
B=rand(3,3);


mafunction1 = matmat1b(A,B) ;
mafunction2 = matmat2b(A,B) ;
mafunction3 = matmat3b(A,B) ;
funcprot(0)

tic()
disp(mafunction3);
t1= toc()
printf ( 'temps  d execution matmat3b=% f ' , t1 )


tic()
disp(mafunction2);
t2= toc()
printf ( 'temps  d execution matmat2b=% f ' , t2 )



tic()
disp(mafunction3);
t3= toc()
printf ( 'temps  d execution matmat1b=% f ' , t3 )
//un tracé de courbe*/
