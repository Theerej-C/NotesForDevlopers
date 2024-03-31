* As substitution normal mode can only substitute the first occurrence of the word in the line only There are many options to be explored.
* There are totally mainly 4 flags that must be placed after the last.
* 
* ![[Pasted image 20240103160018.png]]
* ![[Pasted image 20240103160044.png]]
* ![[Pasted image 20240103160112.png]]
* These are the basic options where the p is for print the actual text also using with -n the p will produce only the modified line only.
* Then the *w filename* is used to save the content to a file specified.
* The / in the sed script can be replaced by any symbols like ! to use the / slash in normal form. Like when we want to use a file path we need to use \\ every time in the path so to avoid we can use the ! as the script separator in the sed.
* We can address in the sed to mark which are the lines we want to work with like the range of lines or lines containing specific pattern.
* First for the addressing of numeric lines we use the ranges in front of script inside the single quotes.
* ![[Pasted image 20240103161027.png]]
* ![[Pasted image 20240103161154.png|400]]
* $ is a special address which marks the end of the line. This can be used to mark starting as some digit and ending as last line.
* The syntax for the string matching is *sed '/String/option/word/replacing word/'*
* The d is for the deleting the lines which match the pattern and if we only pass the d then all the lines are deleted.
* Both pattern matching and also the numbering work with d command to delete.
![[Pasted image 20240103180911.png|300]]
* The i and a for the insert and append where the format is kind of weirds.
* The syntax is *sed '\[address\] command\\text to be inserted'*
* The main difference is insert will insert at front of stream and append will at last and also we can specify the address also.
 ![[Pasted image 20240103181546.png]]
 ![[Pasted image 20240103181923.png]]
 * This is for the specified line insert at the position 3.
 * The c is for the change command which uses same syntax as the insert and append which changes the content of the file at specific line.
 * The y is the only sed command which uses the single character format where :
 * The transform command performs a one-to-one mapping of the IN chars and the outchars values. The first character in inchars is converted to the first character in outchars. The second character in inchars is converted to the second character in outchars. This mapping continues throughout the length of the specified characters. If the inchars and outchars are not the same length, the sed editor produces an error message.
 * The r command is for reading input from a file and = is for the line numbering of the output.
 ![[Pasted image 20240103183534.png|300]]

## Multiline text:
* The problem of the sed is that if a phrase is in multiline it cannot recognize it. But for that there are three special commands.
* N adds next line to process the data, The D for deleting a single line in the multiline group, P prints a single line in the multiline group.
* The N is still like n where the difference is single line next command will point the next line where the N will combine the next line to the first line.
* ![[Pasted image 20240104185135.png|300]]
* The sed editor provides the multiline delete command (D), which deletes only the first line in the pattern space.
* This is very useful when we want to delete a line before the line we intended.
* ![[Pasted image 20240104190049.png|300]]
* Here removal of the first empty line will be impossible without the D where we can only delete all the white lines only.
* When the multiline match occurs, the P command prints only the first line in the pattern space.
## The hold space:
* The pattern space is the data which is examined by the sed at the instance like a single line. Where there are other spaces where we can hold data. Which is called as hold space in the sed.
* There are totally 5 commands for holding spaces:
	* h           Copies pattern space to hold space
	* H           Appends pattern space to hold space
	* g           Copies hold space to pattern space
	* G           Appends hold space to pattern space
	* x            Exchanges contents of pattern and hold spaces
 * The point to note is that p command will print the things in the pattern space.