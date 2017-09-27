decl
	integer status;
	string filename;
	integer i;
	integer choice;
	integer wait;
	integer pid;
enddecl
integer main()
{     
     while 1==1 do 
        print("Enter Choice");
        print("1.Exec file");
        print("2.Send Signal");
        print("3.Exit");
        
        read(choice);
        print("-----");
        
        if (choice == 1) then
            // Fork and Exec the file
            print("Enter fname");
            read(filename);
            print("-----");
            
            //Option to wait
            print("fg(0) or bg(1)");
            print("Enter Choice");
            read(wait);
            print("-----");
            
            
            pid = Fork();
            if (pid == -1) then
                print("fork failed");
            endif;
            
            //Using exec in the child process
            if (pid == -2) then
                status = Exec(filename);
                
                //if exec failed
                if (status == -1) then 
                    print("Exec failed");
                    Exit();
                endif;
            endif;
            
            // Waiting for exec if required
            if ((pid != -2 && pid != -1) && wait == 1) then
                Wait(pid);
            endif;
        endif;
        
        if (choice == 2) then
            print("sending.. ")
            status = Signal();
            
            print("status");
            print(status);
            print("-----");
        endif;
        
        if (choice == 3) then
            break;
        endif;
    endwhile;
    
    print("Exit Shell");
	return 0;
}
