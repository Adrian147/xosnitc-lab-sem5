decl
	integer status;
	string filename;
	integer i;
enddecl
integer main()
{   
    print("fname");
    read(filename);
    
	status = Delete(filename);
	print(status);
	
	return 0;
}
