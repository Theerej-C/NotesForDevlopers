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
* 