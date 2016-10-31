# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control allows developers to view the entire history of revisions to one or more files, and merge revisions made by different people. Version control is important because it essentially protects software. It allows developers to revert files or even entire projects to a previous version or state. Additionally, if a file is screwed up or lost, version control can help to locate the issue on the timeline and recover some of the files.

* What is a branch and why would you use one?

A branch allows developers to work on a copy of a project and add/remove various features without affecting the main line. It's considered bad form to work on the default or master branch, due to the risk of destroying the codebase. Once completed, you can merge various feature branches into the master branch.

* What is a commit? What makes a good commit message?

A commit creates a save point in Git and records changes made to a repository. A good commit message is descriptive yet concise and written in the present tense.

* What is a merge conflict?

A merge conflict occurs when merging or pulling from a branch. Git will notify the user that there is a merge conflict if there is an issue with integrating another branch into the current working branch. For instance, if one person decided to delete a file while the other person decided to modify it, Git will mark the file as having a merge conflict.