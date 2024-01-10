*  Git compares the current state of the index to the previous snapshot and so derives a list of affected files and directories. Git creates new blobs for any file that has changed and new trees for any directory that has changed, and it reuses any blob or tree object that has not changed.
* Commit snapshots are chained together with each new commits where each commit points to its predcessor.
* Commit is the only way to introduce changes to the repository. Commit is an atomic operation as how many files or directories or anything changes single commit will be applied to everyone or none of them.
*  A commit snapshot represents the total set of modified files and directories. It must represent one tree state or the other, and a changeset between two state snapshots represents a complete tree-to-tree transformation.
* We can use the SHA 1 value of the commit as explicit value to denote the commit or the HEAD which touches the latest commit as the implicit of them.
* 