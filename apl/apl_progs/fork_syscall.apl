integer main()
{   
    integer i;
    integer j;
	integer pid;
	
	while (i < 60) do
	    print("Before Fork");
	    pid = Fork();
	    print("After Fork");
	    print(pid);
	    
	    if (pid == -2) then
	        j = Exec("odd.xsm");
	        print(j);
	    endif;
	   
        i = i + 1;
    endwhile;
    
    return 0;
}

