integer main()
{
	integer i;
	integer pid;
	integer status;
	
	while (1 == 1) do
	
	    pid = Fork();
	    
	    if (pid == -1) then
	        print("Nofork");
	        break;
	    endif;
	   
	    if (pid == -2) then
	        pid = Getpid();
	        
	        print(100 + pid);
	        status = Exec("s10t2b.xsm");
	        
	        if (status == -1) then
	            print("Failed");
	            Exit();
	        endif;
	    endif;
	    
    endwhile;
    
    print("Done!");
    breakpoint;
    
	return 0;
}
