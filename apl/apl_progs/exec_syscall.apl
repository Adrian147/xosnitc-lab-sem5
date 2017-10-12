integer main()
{   
    integer i;
	integer pid;
	print("Before Fork");
	while (1 == 1) do
	
	    pid = Fork();
	    
	    if (pid == -1) then
	        break;
	    endif;
	    
	    if (pid == -2) then
	        i = Exec("spin.xsm");
	        
	        if (i == -1) then
	            print("Error");
	            break;
	        endif;
	    endif;

    endwhile;
    
    print("After Fork");
    
    return 0;
}

