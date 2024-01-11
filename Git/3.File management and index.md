* The Git index is the most important thing to be noted and have in minded. It stores all the info regarding the certain stage of the whole repository.
* The git status is the one which shows the state of the index. It calls out explicitly the considered staged things. The *git ls-files* will dig deeper into the structure of the git.
* The *git diff* will show the changes from the current repository and the changes that are not staged.
* The *git diff --cached* will show the staged changes so the --flag will represent the changes to be added.
### File classification:
* Git classification of file is of three types:
	* Tracked
	* Ignored
	* Untracked
* A tracked file is any file already in the repository or any file that is staged in the index.
* An ignored file must be explicitly declared invisible or ignored in the repository even though it may be present within your working directory. The .gitignore is the file used to do this.
* An untracked file is any file not found in either of the previous two categories. Git considers the entire set of files in your working directory and subtracts both the tracked files and the ignored files to yield what is untracked.
* The file can changed to tracked from untracked using the git add which stages the changes. Staging a file is also called caching a file2 or “putting a file in the index.” Use the --stage flag with the git ls-files commands to find the hash values.
* The --interactive flag in the git add and git commit will be useful to add specific file in the staging or commit area. 
* The main point to note is that index will be only prepared for the staged files only.
### File removal and other operations
* Git will not remove a file just from the working directory; the regular rm command may be used for that purpose.
* The already committed file will be persistent in the repository where when we use the git rm it deletes the file from the index to be staged and normal rm will remove the file from the directory.
* The *git rm* will remove the file from both the index and also the working directory where the *git rm --cached* will remove it from the only index.
* ![[Pasted image 20240107123154.png]]
* If we want to remove the file after the commit just we can use the git rm command.
* We can use the *git mv* to move a file from one place to another which can also be used to change the name of the file.
* The main advantage of the git is that after the rename of the file also the previous file name progress would be saved as it is just a content so no problem there.
### .gitignore 
* This is the file where we will try to mention the files and the folders that doesn't need to be added during the complete addition.
* We can have .gitignore on any directory of our repo and it affects that repository and the sub directories only.
* If you want to ignore a file that is already checked in, you must untrack the file before you add a rule to ignore it. From your terminal, untrack the file. *git rm --cached FILENAME*
* There are some patterns to be followed in the git ignore so that it correctly matches the pattern.
* The patterns are:
	- A line starting with # serves as a comment. Put a backslash ("`\`") in front of the first hash for patterns that begin with a hash.
    * An optional prefix "`!`" which negates the pattern; any matching file excluded by a previous pattern will become included again. It is not possible to re-include a file if a parent directory of that file is excluded.
    * The slash "`/`" is used as the directory separator. If there is a separator at the end of the pattern then the pattern will only match directories, otherwise the pattern can match both files and directories.