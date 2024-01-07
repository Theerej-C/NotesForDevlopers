* The regular expression engine is the program which interprets the expression. They are two main types of engines there:
	* The POSIX Basic Regular Expression (BRE) engine
	* The POSIX Extended Regular Expression (ERE) engine
* The sed uses the small part of the BRE where the gawk uses the ERE fully.
* The gawk also has the same syntax as the sed like : *gawk '/string/{print $0}'* which prints the matching lines with the string in it.
* The advantage of the reg ex is that it can match the pattern not only work for example the word books can be matched using the book word itself but at default it doesn't recognizes the cases.
* We can also use the numbers and spaces and other characters in the reg ex.
![[Pasted image 20240104073158.png]]
* The exception is that special symbols have different meanings in the reg ex. But if we want to use these characters we need to use the escape character \\.
* The ^ character is used to mark the starting of line where when we used ^*word* then the reg ex will check the line starting with that specific word
* ![[Pasted image 20240104080651.png]]
* The point to remember is whenever we use the ^ at any place other than starting then it is a normal character.
* The $ sign is for the end of line text recognition where the syntax is *word$*.
* ![[Pasted image 20240104081417.png]]
* We can use both the anchor and dollar for a specific line finding. The main point is if we mention start and end pointer using the anchor and the dollar then we need to mention the total line in place.
* ![[Pasted image 20240104090205.png]]
* By combining both anchors in a pattern with no text, you can filter blank lines from the data stream. Syntax *sed  '/^$/d'*
* The dot special character is used to match any single character except a newline character. The dot character must match a character, however; if there’s no character in the place of the dot, then the pattern fails.
* ![[Pasted image 20240104091119.png]]
* The point to note is that the . will also recognizes the space also as a character. The only exception is the new line character which is not recognized.
## Character class:
* The character class is like dot but the diff is that it can define specific char or bunch of chars.
* If any of the character inside the character class matches then the line will pass.
* ![[Pasted image 20240104092051.png|300]]
* The advantage is that we can mention the cases also like *\[yY\]*
* And also we can use also many more classes in single one example: *sed -n '/\[Yy\]\[Ee\]\[Ss\]/p'*
* In character class numbers can also be used in there.
* We can also use the negation of the character class using the ^ inside the [].
* ![[Pasted image 20240104093247.png|400]]
* We can add ranges inside the character class where - this will mention the range for example \[a-f] refers to all chars from a to f.
* You can also specify multiple, non-continuous ranges in a single character class: *sed -n '/\[a-ch-m]at/p' data6*
* There are BRE special character classes in the BRE so we can use that to match the pattern. For example \[\[:alpha:]].
* \[\[:alpha:]]Matches any alphabetical character, either upper or lower case
* \[\[:alnum:]]Matches any alphanumeric character 0–9, A–Z, or a–z
* \[\[:blank:]]Matches a space or Tab character
* \[\[:digit:]]Matches a numerical digit from 0 through 9
* \[\[:lower:]]Matches any lowercase alphabetical character a–z
* \[\[:print:]]Matches any printable character
* \[\[:punct:]]Matches a punctuation character
* \[\[:space:]]Matches any whitespace character: space, Tab, NL, FF, VT, CR
* \[\[:upper:]]Matches any uppercase alphabetical character A–Z
* ![[Pasted image 20240104095012.png|300]]
* Placing an asterisk after a character signifies that the character must appear zero or more times in the text to match the pattern.
* ![[Pasted image 20240104095710.png|400]]
* There is a trick where we add dot and asterisk to select any number of words inbetween or anywhere Example: */Reg .\* exp/p* 
## POSIX ERE
* The POSIX ERE patterns include a few additional symbols that are used by some Linux applications and utilities. The gawk program recognizes the ERE patterns, but the sed editor doesn’t.
* The question mark is similar to the asterisk, but with a slight twist. The question mark indicates that the preceding character can appear zero or one time, but that’s all.
![[Pasted image 20240104100328.png|400]]
* The point to note is that we use the ? after a char the char is only checked. As with the asterisk, you can use the question mark symbol along with a character class.
* The plus sign + is used just like the asterisk but the character should present atleast once in the pattern.
* Curly braces are available in ERE to allow you to specify a limit on a repeatable regular expression.
* m: The regular expression appears exactly m times.
* m, n: The regular expression appears at least m times, but no more than n times.
* By default, the gawk program doesn’t recognize regular expression intervals. You must specify the --re-interval.
* ![[Pasted image 20240104101154.png|350]]
* The pipe symbol | is for the logical or operation where we can specify multiple words and if any one matches there will be match.
* ![[Pasted image 20240104101517.png|350]]
* We can group the expressions using the parenthesis (). Syntax is : '/Sat(urday)?/'
* Using the parenthesis we can consider the expression inside it as single and we can use the special symbols like * ^ ? to manipulate it.