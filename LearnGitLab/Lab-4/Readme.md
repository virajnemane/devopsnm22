## Git branching strategy

Basically there are mainly 5 types of branches exist. (From functional point of view.)
- Master 
- Development
- Feature- to develop new features that branches off the develop branch 
- Release- help prepare a new production release; usually branched from the develop branch and must be merged back to both develop and master
- Hotfix- also helps prepare for a release but unlike release branches, hotfix branches arise from a bug that has been discovered and must be resolved; it enables developers to keep working on their own changes on the develop branch while the bug is being fixed.

There are different types of strategy orgnization follows, but one strategy which very famouse and followed by most organization is that **feature branching strateg**.

1) In this strategy, clean code always will be in master.
2) Whenever any new development need to be done, new branch get created from Master branch. Developer works on this branch and merge their code in Master branch.
3) Once developer merge their changes in Master branch, new branch get created out of Master branch, called as Release branch.
4) Production deployment done from this release branch. 

#### Note - In between this development, any bug found in production and which need to be fixed immediately. In this scenario, new branch get created from master branch, this branch called HotFix branch, code get updated to fix bug and then this branch get merged in Master branch. And then from Master branch HotFix Release branch get created.

![git-branch-strategy](/images/git-branch-strategy.PNG)
------------

back to [LearnGitLab](../../LearnGitLab)