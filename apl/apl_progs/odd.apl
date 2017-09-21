integer main()
{   
    integer n;
    integer i;
    
    n = 100;
    i = 1;
    
    while i < n do 
        if (i % 2 == 1) then 
            print(i);
        endif;
        i = i + 1;
    endwhile;
    
    i = Exec("odde.xsm");
    
    print("Error");
    print(i);
    
    return 0;
}
