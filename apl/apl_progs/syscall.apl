decl
	integer status;
	string filename;
	integer i;
enddecl
integer main()
{   
    print("fname");
    read(filename);
    
    i = 0;
    while (i < 100) do
        print(i);
        
        i = i + 1;
    endwhile;
   
	status = Create(filename);
	print(status);
	
    while (i < 200) do
        print(i);
        
        i = i + 1;
    endwhile;
	
	return 0;
}
