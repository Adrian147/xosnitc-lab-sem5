decl
	integer fid1;
	integer fid2;
	integer status;
	string filename;
	integer i;
	integer temp;
enddecl
integer main()
{   
    // Taking filename inputs
    print("fname");
    read(filename);
	
	//Reading from empty file
	fid1 = Open(filename);
	
	i = 0;
	
	while(i < 10) do
	    status = Write(fid1, i);
	    print("status :");
	    print(status);
	    
	    i = i + 1;
	endwhile;
	
	print("printing value:");
	fid2 = Open(filename);
	
	i = 0;
	
	while(i < 10) do
	    status = Read(fid2, temp);
	    print("status :");
	    print(status);
	    
	    print("value :");
	    print(temp);
	    
	    i = i + 1;
	endwhile;
	
	return 0;
}
