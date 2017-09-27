integer main()
{   
    integer n;
    integer i;
    integer status;
    integer pid;
    integer ppid;
    
    //Initial values
    ppid = -1;
    pid = -1;
    n = 100;
    i = 1;
    
    while i < n do 
        if (i % 2 == 1) then 
            print(i);
        endif;
        i = i + 1;
    endwhile;
    
    pid = Getpid();
    ppid = Getppid();
    
    print("pid");
    print(pid);
    print("");
    
    print("ppid");
    print(ppid);
    print("");
    Exit();
    return 0;
}
