* A Git repository is simply a database containing all the information needed to retain and manage the revisions and history of a project.
* Git maintains a set of configuration values within each repository. Unlike file data and other repository metadata, configuration settings are not propagated from one repository to another during a clone, or duplicating, operation. This means files changes or commits are propagated but not the configuration.
* Within a repository, Git maintains two primary data structures, the object store and the index. All of this repository data is stored at the root of your working directory in a hidden subdirectory named .git. 
* The object store is to cloning repository where to transfer some data to the cloned repo. The index is transitory information, is private to a repository, and can be created or modified on demand as needed.
## The object Store:
* The object store is the one which contains the information like original data files, author information , log messages, etc.
* There are totally 4 types of object files which creates the basic data structure. The first one is the blob or binary object files. Each version of a file is represented as a blob. The blob holds a files data but not the information about it not even the name.
* A tree which holds a one level of directory information which includes some meta data also. It also consist of the blob identifiers which is important to refer a blob.
* A commit object holds metadata for each change introduced into the repository, including the author, committer, commit date, and log message. Each commit points to a tree object that captures, in one complete snapshot.
* A tag object assigns an arbitrary yet presumably human readable name to a specific object, usually a commit
## Index:
* It is a temporary and dynamic binary file that describes the directory structure of repository.
* More specifically, the index captures a version of the project’s overall structure at some moment in time.
* The Git object store is organized and implemented as a content-addressable storage system. Specifically, each object in the object store has a unique name produced by applying SHA1 to the contents of the object, yielding an SHA1 hash value.
* First, Git’s object store is based on the hashed computation of the contents of its objects, not on the file or directory names from the user’s original file layout.
*  Git uses a more efficient storage mechanism called a pack file. To create a packed file, Git first locates files whose content is very similar and stores the complete content for one of them. It then computes the differences, or deltas, between similar files and stores just the differences. 
* ![[Pasted image 20240106183714.png|500]]
* Adding one extra commit with directory and a file results in :
* ![[Pasted image 20240106183828.png|500]]
## .git folder
* The initial .git folder of the initialized git repository contains the template files inside it. 
* We can alter it and maximum it is not necessary.
* The .git/objects doesn't have anything in it except some templates. When we do the first commit created 2 files.
* The first one is the directory with name of first two hex digit of the SHA 1 value of the files of the commit. The next one is continuation is the actual sha with a / after 2 character of the created directory like 3b, 3b/fdafs....
* We can use the hash value to pull out the file using the cat-file with -p flag of the git.
* ![[Pasted image 20240106185551.png]]
* This is the blob information.
* ![[Pasted image 20240106185949.png]]
* This is the commit object which can be viewed using the same technique in the git cat-file.
* We should note that commit objects differ for every commits but the tree objects doesn't change if there is not change in the file. So it facilitates the distributed VCS.
* 

