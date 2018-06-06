# texgit
Manage tex files with local git environment

## Requires
* git
* latexdiff

# Recommended GitFlow
First, you should initialize the directory by following.

```
git init
```

Manage "test.tex" by following git flow

```
git checkout -b "Today's Date"
git add test.tex
git commit -m "commit comment"
""" Revise test.tex file"""
git add test.tex
git commit -m "Revise Finished"
git checkout master
git merge "Today's Date"
```

# Generate Diff PDF
Before marge the master branch, we should generate the PDF diff file with latexdiff.
We prepare a useful shell script for this. 
If we execute the following, then the diff.tex will be created in the directory ./diff.
It is the difference between the file in current directory and the same name file in master branch.

```
./make_diff.sh "filename".tex
```