decl
	integer fid;
	integer status;
	string filename;
	integer i;
enddecl
integer main()
{   
    // Taking filename inputs
    print("fname");
    read(filename);
    
	//Seek to the end of the File
    print("seek EOF :");
    fid = Open("file1.dat");
	//since the file is empty
	status = Seek(fid, 0);
    
    print("status :");
	print(status);
    
    i = 42;
	
	//Writing to EOF
	print("writing 42:");
	status = Write(fid, i);
	
	print("status :");
	print(status);
	
	//SEEK to illegal location
	print("seek 4100");
	status = Seek(fid, 4100);
	
	print("status :");
	print(status);
	
	return 0;
}
