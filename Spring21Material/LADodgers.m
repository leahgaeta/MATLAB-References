

%{ 

Write a script "LA Dodgers" that will read names from a file "LAroster.txt" in the form, 
"Last, First" anf print in the form "First Last". 
For example, if the file stores the following:

Bellinger, Cody
Seager, Cory
Turner, Justin
Betts, Mookie}

Cody Bellinger
Cory Seager
Justin Turner
Mookie Betts

------------- 

%}

fid = fopen('LAroster.txt');
aline = fgetl(fid);
while aline ~= -1
	[last, first] = strtok(aline);
	last = last(1:end-1);
	first = strtrim(first);
	fprintf('%s %s\n', first, last)
	aline = fgetl(fid);
end
fc = fclose(fid);

