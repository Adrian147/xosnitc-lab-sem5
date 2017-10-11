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
	        pid = Getpid();
	        print(pid);
	        while (1 == 1) do
	            i = i;
	        endwhile;
	    endif;

    endwhile;
    
    print("Before Fork");
    
    return 0;
}

