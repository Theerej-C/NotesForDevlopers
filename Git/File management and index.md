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
* 
