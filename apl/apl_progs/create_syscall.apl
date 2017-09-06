decl
	integer status;
	string filename;
	integer i;
enddecl
integer main()
{   
    print("fname");
    read(filename);
    
	status = Create(filename);
	print(status);
	
	return 0;
}
