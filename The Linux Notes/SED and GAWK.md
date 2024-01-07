* sed is an stream line editor which is faster than a typical text editor. This can be used to read a file once and make changes with single script.
* We can mention the script directly in the command line or we can use a file to add the script.
* The sed editor can manipulate data in a data stream based on commands you either enter into the command line or store in a command text file. The sed editor does these things:
	1. Reads one data line at a time from the input
	2. Matches that data with the supplied editor commands
	3. Changes data in the stream as specified in the commands
	4. Outputs the new data to STDOUT
* The sed will do the action in a single line and moves to next line.
* The syntax of the sed is *sed options script file*
* ![[Pasted image 20240103111233.png|300]]
* The sed command executes and returns the data almost instantaneously. As it processes each line of data, the results are displayed.
* It’s important to note that the sed editor doesn’t modify the data in the text file itself. It only sends the modified text to STDOUT.
* We can use the multiple editor commands using the ; after each command inside single quotes.
* ![[Pasted image 20240103111508.png|300]]
* We can enter manually some scripts in a file with sed extension we can read it using the -f flag and file name
# GAWK
* awk is **a domain-specific language designed for text processing and typically used as a data extraction and reporting tool**. Like sed and grep, it is a filter, and is a standard feature of most Unix-like operating systems.
* The advanced version of the awk is the gawk.
* The gawk has the syntax of *gawk options program file*
* -F fs Specifies a file separator for delineating data fields in a line in the options.
* -f file Specifies a file name to read the program from
* We must place the script in between {} and also should surround it with single quotes when using in command line.
* ![[Pasted image 20240103113513.png|300]]
* The gawk will capture the shell and waits for the STDIN and can be stopped using the EOF or end of file in Linux which is Ctrl-D.
* The gawk will automatically provide variables to the data elements of a line in text file
* $0 represents the entire line of text. 
* $1 represents the first data field in the line of text.
* $2 represents the second data field in the line of text.
* $n represents the nth data field in the line of text.
![[Pasted image 20240103120456.png|300]]

* This uses the space as field separator but if we want we can change using the -F flag.
* ![[Pasted image 20240103120659.png|300]]
* We can use the variables to manipulate the output by assigning them.
* Then we can have a multi line program in shell using *'{*  and pressing enter which opens command prompt.
* ![[Pasted image 20240103121232.png|300]]
* We can use separate file with gawk extension and -f flag in gawk command to use separate file. We need to wrap all the lines of code inside {} in the code file.
* Gawk uses the BEGIN keyword and END word to mark the beginning and ending of script.
* The things in beginning will start before script start and doesn't wait for the gawk to read input.
* ![[Pasted image 20240103123130.png|500]]
* Each is separate block with separate {} as a starting and ending.
* We can set the FS field inside the BEGIN block itself in the code.
* ![[Pasted image 20240103123746.png|300]]
* 