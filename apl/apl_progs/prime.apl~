decl
	integer isprime(integer i);
enddecl

integer isprime(integer i)
{
    integer p;
    integer j;
    j = 2;
    p = 1; 
    while j < i do
        if i % j == 0 then
            p = 0;
            break;
        endif;
        j = j + 1;
    endwhile;
    return p;
}

integer main()
{   
    integer n;
    integer i;
    integer j;
    
    read(n);
    i = 2;
    
    while i < n do
        j = isprime(i);  
        if j == 1 then 
            print(i);
        endif;
        i = i + 1;
    endwhile;
    return 0;
}
