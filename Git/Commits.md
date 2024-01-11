*  Git compares the current state of the index to the previous snapshot and so derives a list of affected files and directories. Git creates new blobs for any file that has changed and new trees for any directory that has changed, and it reuses any blob or tree object that has not changed.
* Commit snapshots are chained together with each new commits where each commit points to its predecessor.
* Commit is the only way to introduce changes to the repository. Commit is an atomic operation as how many files or directories or anything changes single commit will be applied to everyone or none of them.
*  A commit snapshot represents the total set of modified files and directories. It must represent one tree state or the other, and a changeset between two state snapshots represents a complete tree-to-tree transformation.
* We can use the SHA 1 value of the commit as explicit value to denote the commit or the HEAD which touches the latest commit as the implicit of them.
* The commit ID is an globally unique one which refers to only one commit so we can call the commit exactly using the ID.
* We can use the first 6 character of the SHA 1 ID of the commit and shorten that will prone to error(Must 6 digits).
* A ref is an SHA1 hash ID that refers to the object within the git object store. It usually refers to the git commit object.
* The local topic or any other branches names are just short forms of the refs/something.
* For example the origin master branch is *ref/remotes/origin/master*.
* Git uses some special references in the system where it is used anywhere in the commit.
* HEAD - Always refers to the most recent commit on the current branch. When we change the branch the head is also updated.
* Certain operations like merge and reset will store the previous HEAD in the ORIG_HEAD ref.
* The FETCH_HEAD is used during a remote repository operation fetch and only valid only immediately after a fetch operation.
* When merge is in process the tip of the other branch is temporarily recorded in MERGE_HEAD.
* When we need to plumb these refs we use the *git symbolic-ref*.
* We can refer to a commit relatively using two symbols with the branch we need for example the master branch.
* The symbols are the ^ and the ~ where the caret is used to select different parent of a commit.
* The commit have parents and also multiple parents if there is a merge operation. So we can use the caret with numbers to refer the number of stages we want to go back. For example c^3 means third parent.
* The ~ is used to go in a deeper side of the branch when it is merged like parent 1 from branch one and grandparent in branch 1 which is merged with another branch.
* ![[Pasted image 20240110092640.png|400]]
* This shows the symbols. The command git rev-parse is the final authority on translating any form of commit name—tag, relative, shortened, or absolute into an actual, absolute commit hash ID within the object database.
* The *git log* is the tool to be used to manipulate the output and fetch what we want only.
* The git log blank will give the HEAD branch commits only. So we need to use the flags and filters.
* The *git log commit_name* will tell you the log of the commit specified using the various things like commit ID, etc.
* We can use the range of the history to get the specific set of commits. Like *since..until*. The example is *git log master~12..master~13*.
* This filters the commits from the masters 12th to the 13th commit and all the things in between them.
* The flags like --pretty=short can reduce the information from the commit message then the --abbrev-commit will abbreviate the commit hash value.
* ![[Pasted image 20240110094437.png|400]]
* The main thing to note is the we should mention the rage from parent to the child.
* The -p flag is for the details of the patches and changes.
* ![[Pasted image 20240111090735.png|400]]
* The -n flag is for the number of commits we want to visit.
* The --stat will tell the file changes and how many lines are modified. *git show commitname* is an another command to be used to see the objects in the git object store.
### Commit graphs and ranges:
* The git uses the special graph the directed acyclic graph. The direction is towards their parents. For example A is a initial commit then from B the arrow will be towards the A.
* The ^x is to exclude the commit and the predecessor of that commit. For example the x..y is equals to ^x y.
* The git ranges can be tricky as the graph is Directed acyclic graph we cannot get all the commits form two branches which are merged. For example:
* ![[Pasted image 20240111102418.png]]
* In this branches when we use the topic..master then the commits in the master will be only printed. Like W X Y Z. Because it cannot traverse backwards.
* As we know the range will be from higher to lower number for example 12 to 10 which means as the graphs are directed it will be started from the lower one like 10 to 12 where 12 is excluded. So in topic .. master the master is the starting point.
* When we use the ... dots instead of 2 dots then this represents the symmetric difference between A and B or set of commits from a and b but not both.