# Git Branching


## What is Branching

- Branching means you diverge from the main line of development and continue to do work without messing with that main line.

## Branches in a Nutshell

- Git doesn’t store data as a series of change-sets or differences, but instead as a series of snapshots.
- When you make a commit, Git stores a commit object that contains a pointer to the snapshot of the content you staged.
- A branch in Git is simply a lightweight movable pointer to one of these commits. The default branch name in Git is master. As you start making commits, you’re given a master branch that points to the last commit you made. Every time you commit, the master branch pointer moves forward automatically.

## Branching Workflows

- Master Branch
- Feature/Develop
- Hotfix Branch

## Let's do some hands on


- 

	- When we initialize repo directory with below command:
```
git init .
```
	-  As you see above image, there are 3 area in git.
		- Working Area - When any file/directory is created, they're are not handled by Git. They can also be called untracked files.
		- Staging Area - That's what files are going to be the part of your next commit. And it's how git know what is going to change between the current commit and the next one.
```
git add filename
```
		- Local Repo Area - When file is committed, it
```
git commit -m 'some message' filename
```
		- 