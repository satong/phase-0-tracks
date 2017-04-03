# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is the management of changes to files. Managing versions across time is extremely beneficial especially when there are multiple people working on a project together.  Version control allows users to easily track, compare files, and identify changes.

* What is a branch and why would you use one?

A branch is a "copy" of the project that allows you to make changes without affecting the "master" branch. You would typically make a branch for each new feature and then merge the branch back with the master once the new feature is complete (or not merge if you don't want to incorporate the feature anymore). Branching therefore allows you to discard changes easily without affecting the "master" branch.

* What is a commit? What makes a good commit message?

A commit is a "save point" to save all the changes you've made up till that point. We need to explicitly tell git via the command line to save because git doesn't automatically save versions. A good commit message should be clear, concise and consistent. It should explain not only what changed but also why.

* What is a merge conflict?

A merge conflict typically happens when the current branch and target merge branch (the branch that you want to merge into the current branch) have diverged because there are commits in one branch that aren't in the other.

**Random edit**
