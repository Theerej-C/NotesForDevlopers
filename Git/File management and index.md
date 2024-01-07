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
* 