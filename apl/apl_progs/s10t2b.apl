integer main()
{
	integer i;
	integer pid;
	integer status;
	
	
	pid = Fork();
	    
	if (pid == -1) then
	    print("Cant Fork");
	    Exit();
	endif;
	
	pid = Getpid();
	print(pid);
	
	while 1 == 1 do
	    print(pid);
	endwhile;
    
	return 0;
}
