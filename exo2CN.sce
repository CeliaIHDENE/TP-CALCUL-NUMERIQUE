function l= jouetvariable(n)
   
    l=n
    pas=1
    A = rand(n,n);
    xex = rand(n, 1);
    b = A*xex;
    x = A\b;
    frelres = norm (x-xex)/norm (xex);
    brelres= norm (b-A*x)/norm (b);
    
    cap(pas) = cond(A);
  
 
     printf ( 'frelress ' )
    disp(frelres);
    printf ( 'brelress ' )
    disp(brelres);
    printf ( 'cond' )
    disp(cap);}
 
   
    
   
    
endfunction


f= jouetvariable(i) ;
     
disp(f)


