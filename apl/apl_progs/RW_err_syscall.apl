decl
	integer fid;
	integer status;
	string filename;
	integer i;
enddecl
integer main()
{   
    // Performing syscalls without opening the file
    print("Reading blank");
    status = Read(0, i);
	
	print("status :");
	print(status);
	
	print("Seeking start");
    status = Seek(0, 0);
	
	print("status :");
	print(status);
	
	print("Write 2 blank");
	status = Write(0, 0);
	
	print("status :");
	print(status);
	
	print("reading empty");
	
	//Reading from empty file
	fid = Open("file1.dat");
	status = Read(fid, i);
	
	print("status :");
	print(status);
	
	print("read value :");
	print(i);
	
	return 0;
}
