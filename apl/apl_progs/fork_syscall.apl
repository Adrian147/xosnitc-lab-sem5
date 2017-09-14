integer main()
{   
    integer i;
	integer pid;
	
	while (i < 6) do
	    print("Before Fork");
	    pid = Fork();
	    print("After Fork");
	    print(pid);
	   
        i = i + 1;
    endwhile;
    
    return 0;
}

