# Lets understand GIT little more .....

## stash and unstash

Sometimes we are working on some branch and on emergency basis you need to work on some another branch. Now you already edited lot of files in current branch, which you don't want to loose. In such situcation, **git stash** will rescue you.

**git stash** - command will park your changes from workspace to a stack.

**git stash pop** - command will bring your changes back to workspace from a stack.

Refer [git stash document](https://git-scm.com/docs/git-stash)

## .gitignore file

Sometimes we create some files but we don't want to commit those files to git. i.e. file which contains password, or secret key, or token for authentication. In such case .gitignore file will help in that.

gitignore file is a text file that tells Git which files or folders to ignore in a project. A local . gitignore file is usually placed in the root directory of a project.

#### create file password.txt
![git-ignore-1](/images/git-ignore-1.PNG)

#### check git status
    git status
![git-ignore-1](/images/git-ignore-2.PNG)

#### create .gitignore file and add **password.txt** and save it.
![git-ignore-1](/images/git-ignore-3.PNG)

#### check git status again
    git status
![git-ignore-1](/images/git-ignore-4.PNG)

Note - Now password.txt is not showing in staging, because we added it in .gitignore file.

#### go ahead and commit the changes.
![git-ignore-1](/images/git-ignore-5.PNG)

#### check on gitlab UI console.
![git-ignore-1](/images/git-ignore-6.PNG)

Note - You won't see password.txt
#### 
--------
## difference between git fetch and git pull
#### In local repository --> create new file add one line in file and push change to git.
![git-pull=fetch-1](/images/git-pull-fetch-1.PNG)


![git-pull=fetch-1](/images/git-pull-fetch-2.PNG)

#### In remote repository --> Edit file, add second line and commit changes.

Click on **db.properties.txt** file

![git-pull=fetch-1](/images/git-pull-fetch-3.PNG)

Click on **arrow** symbole, select **Edit** option then click on **Edit** button.

![git-pull=fetch-1](/images/git-pull-fetch-4.PNG)

Add second line as given in screenshot, add comment and click on **Commit changes**
![git-pull=fetch-1](/images/git-pull-fetch-5.PNG)


![git-pull=fetch-1](/images/git-pull-fetch-6.PNG)


## Now do git fetch - it will fetch changes
    git fetch
![git-pull=fetch-1](/images/git-pull-fetch-7.PNG)

## open db.properties.txt and check second line visible or not.
![git-pull=fetch-1](/images/git-pull-fetch-8.PNG)

## Now do git pull
    git pull
![git-pull=fetch-1](/images/git-pull-fetch-9.PNG)

**Note - git pull command itself explain which file is modified/updated by this git pull command.**

## Now again open db.properties.txt and check second line visible or not.
![git-pull=fetch-1](/images/git-pull-fetch-10.PNG)

--------

![](/images/fetch-vs-pull.png)

------------
## Bottom line
1) git fetch - fetches update from remote repository to local repository
2) git pull - pulls updates from remote repository to local repository as well as workspace directly.
3) before commiting workspace changes, do git fetch to know that, is there any changes done in orignal(remote) repository.
This will help not to loose workspace changes.

------------

back to [LearnGitLab](../../LearnGitLab)