decl
	integer status;
	string filename;
	integer i;
enddecl
integer main()
{   
    // Taking filename inputs
    print("fname");
    read(filename);
    
    //Using the create syscall
	status = Create(filename);
	print(status);
	
	return 0;
}
