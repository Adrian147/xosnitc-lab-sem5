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
    
    fid = Open(filename);
	
	if (fid == -1) then
	    print("File does not exist");
	endif;
	
	//Deleting while still in use
	print("deleting file");
	status = Delete(filename);
	
	print("status :");
	print(status);
	
	//Closing file
	print("closing file");
	status = Close(fid);
	
	print("status :");
	print(status);
	
	//Deleting the file after closing
	print("deleting file");
	status = Delete(filename);
	
	print("status :");
	print(status);
	
	return 0;
}
