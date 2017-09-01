integer main()
{   
    integer n;
    integer i;
    
    n = 20;
    i = 1;
    
    while i < n do 
        if (i % 2 == 1) then 
            print(i);
        endif;
        i = i + 1;
    endwhile;
    return 0;
}
