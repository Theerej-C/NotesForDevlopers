* Git is an type of VCS which is a version control system and also this is a distributed version control which means that every one involved in the project can have their own repository.
* It was created by the Linus Torvalds by himself for the version control of Linux kernel.
* The Git command line is the most powerful usage of the git. It can be triggered by typing *git* inside the terminal of  the installed system.
* The main advantage if the git is that it can be used by many developers simultaneously and not only the source code it can control all types of file.
* For git full help type *git help --all*. The git commands understand both short hand and also the long hand options.
* There are many ways to use the git like creating from the scratch, cloning another repo, copying files, etc.
* In this notes first I will create repo and use the git in it.
* To turn any directory to a git repo use the *git init* command. This will initialize the repo but no files are added so we should use the *git add* to add files to repo. If we use the *git add .* Then all the files are added which are inside the git. This also will not add the un modified files only the modified ones.
* ![[Pasted image 20240106093301.png|300]]
* The git status is used to see the status of the current state of the repository. The main point to note in the git add is that it stages the changes.
* But not commit the changes which means it is an intermediate stage which is very useful to batch the changes. For example if two folders got changes we need to commit them in different commits so we need different adds.
*  Git records several other pieces of metadata with each commit, including a log message and the author of the change. We can set the universal username so that only the log message can be used but of we didn't mentioned then there is a compulsion of providing author name.
* ![[Pasted image 20240106093831.png]]
* If the author is present no need but if not it will create the author where the syntax is *author \<email>*
* When we only give the git commit alone then the editor will be opened and we can type complete log message we want.
* We can configure the commit author and email using the git config.
* The local configuration can be done using the syntax *git config user.name\/email "name/email"*
* When we use the global flag after the user.name or email sets that to all the repository in the system.
* ![[Pasted image 20240106094957.png]]
* The point to note is that never use a equals sign in these configs.
* ![[Pasted image 20240106095303.png]]
* Git log is for the logging of the commits. The point to note here is that local author setting overrides the global author and email.
* The commit id is an important one in here which is used to retrack the changes made using the uncommit.
* The show of git with commit ID is used to see more details of a particular commit.
* ![[Pasted image 20240106095700.png|400]]
* Without commit ID git show will give the detail of most recent commit.
* show-branch, provides concise, one-line summaries for the current development branch. And also we can mention the --more where we can tell how many versions we want.
* ![[Pasted image 20240106095925.png]]
* The diff of the git is for the git diff which shows difference between the commits. We can specify the commit ID in the *git diff id1 id2* syntax to show the diff.
* ![[Pasted image 20240106100157.png]]
* ![[Pasted image 20240106100436.png]]
* The git rm is for removing the file like adding it using the add.
* The *git clone repo name* is for cloning a git repo to another repo. The main point to note is that all the changes and the commits are transferred to the new repo. This can be viewed by the log command.
## Config 
* The git config is where we configure the settings of the git. The .gitconfig file will have the global configuration where it is placed in the ~ repo of the user. The --global is used to change this one.
* Where the config folder of the .git folder in our current repository have repository specific configurations. This can be manipulated using the --file in the git config.
* ![[Pasted image 20240106103611.png|300]]
* Where in Linux */etc/gitconfig* is the total global one which can be manipulated by the --system command in git config.
* We can use the --unset after the config in the configuration command then we can unset it.
* We can set git alias using the *git config alias.alias-name alias-command*
* ![[Pasted image 20240106111332.png]]
* ![[Pasted image 20240106111516.png]]
* 