# Before doing anything lets understand how GIT works.
1) we create repo on gitlab.com
2) we clone it on our system. This is called local repository.
So now we have 2 repository, one Remote repository (created on gitlab.com), and another one is local repository (which is on our system.)
3) we create file in workspace. Workspace is different than local repository.
4) we add newly created file in index. Index is db, list of files tracked by git for any changes, which contains detail about changes in local repository.
5) we execute commit command, which submit changes done in workspace to local repository.
6) we execute push command which push changes from local repository to remote repository.

![how-git-works](/images/git-work-1.png)

---------------------
## Lets do some basic GIT operations

#### Create git repo name as "myfirstrepo"

#### clone git repo on server/local system
	git clone https://gitlab.com/indorenilesh2/myfirstrepo.git

Note - if above command asking you password then [configure git](../Lab-1/configure-token.md) to store credential locally.

#### create test file inside repo and check status
	cd myfirstrepo

#### create test.txt and add below line
	This is my first edit.

#### check git status
	git status

#### add new file in index
	git add test.txt
	git status

#### commit file in local repo
	git commit -m "first edit"
	git status

#### push changes to github
	git push

#### Open test.txt file in github make changes and save/commit it.
	This is my second edit.

#### pull repo to get latest update.
	git pull

#### edit test.txt file again and add 3rd line
	cd myfirstrepo

	vim test.txt
		This is my third edit.
	git status
	git add test.txt
	git status
	git commit -m "third edit"
	git status
	git push

## Now I want a older version of file.
#### check git log for older versions of file
	git log --oneline

### select version id and restore it
	git checkout <versionid> test.txt
	git status
	git add test.txt
	git status
	git commit -m "restoring older version file"
	git status
	git push

-----------------
## how to upload your existing project on git 
#### create directory and inside that directory
	mkdir mysecondrepo
	cd mysecondrepo
	git init

#### create some file then add and commit those files locally
	vim test.txt
		This is my first edit.
	git add test.txt
	git commit -m "uploading first file"
 
#### create git repo on gitlab.com named as "mysecondrepo"

#### inform local git about remote git
	git remote add origin https://gitlab.com/indorenilesh2/mysecondrepo.git

#### push files to remote git
	git push

------------
## Now lets see how to create and use branch
#### Go to your repository and click on + sign, select **New Branch** option
![git-branch-create-1](/images/git-branch-create-1.PNG)

#### Provide branch name, select from source branch and click on **Create branch**
![git-branch-create-1](/images/git-branch-create-2.PNG)

#### Now you are switched to new branch
![git-branch-create-1](/images/git-branch-create-3.PNG)

------------
## Now lets see how we can switch and work with branch in command line
#### First check in which branch currently you are
	git branch

![git-branch-use-1](/images/git-branch-use-1.PNG)

#### Switch to required branch
	git checkout feature-add-location

![git-branch-use-2](/images/git-branch-use-2.PNG)

#### Create location.txt 
![git-branch-use-3](/images/git-branch-use-3.PNG)

#### Push location.txt to remote repository.
	git status
	git add location.txt
	git commit -m "location added"
	git push

![git-branch-use-4](/images/git-branch-use-4.PNG)

#### Merge code with main branch
Now observer above image highlighted with rectangle. It automatically provide url which will help to create merge request.

Merge requests (MRs) are the way you check source code changes into a branch. When you open a merge request, you can visualize and collaborate on the code changes before merge. Merge requests include: A description of the request. Code changes and inline code reviews.

Open that link to create merge request.

- You can find from which branch to which branch code is going to merge.
- You need to add Title.
- You can provide detail description about whole code changes.
- You need to provide Assignee. This person will merge your code. Of-course he should have access to merge code in main branch.
- You need to provide Reviewer. This person will reviewe your code. Merge code in main branch is major process which can impact the whole application in production. Due to which it is good practise to review code twice before it get merged in main branch.

![git-merge-request-1](/images/git-merge-request-1.PNG)

- You can click on **Changes** to see what actual changes going to merge.
- Click on **Create merge request**

![git-merge-request-2](/images/git-merge-request-2.PNG)

- You can see one merge request raised in right panel of the screen.
- To merge code we can click on **Merge**. It will merge the code and will close merge request.

![git-merge-request-3](/images/git-merge-request-3.PNG)

- Sometimes we want to cancel merge request due to some reason. In such situation you can click on **Close merge request**, which actually cancel your request.

- Click on **Close merge request**

![git-merge-request-4](/images/git-merge-request-4.PNG)

## Now lets see how we can raise merge request from gitlab manually.

- Click on **Merge request** which is available in right panel of the screen.
- Here you can check 
	- open merge request
	- request which is already merged
	- reqeust which is cancelled
	- all merge request  
- Here you will find 2 option to raise merge request.
	- **Create merge request** - If you recently pushed some changes in any branch it will raise merge request for it. It will redirect you to same link which you got in command line when you pushed changes to branch.
	- **New merge request** - In this option, you need to explicitly provide source branch and destination branch. Bydefault destination branch is selected as "main" 

![git-merge-request-10](/images/git-merge-request-10.PNG)

- Click on **New merge request**
- Select source branch and destination branch.
- Click on **Compare branches and continue**

![git-merge-request-11](/images/git-merge-request-11.PNG)

- Provide required details and click on **Create merge request**

![git-merge-request-12](/images/git-merge-request-12.PNG)

- You can click on **Changes** to check what changes going in merge request.
- Click on **Merge** to merge changes.

![git-merge-request-13](/images/git-merge-request-13.PNG)

#### Pull code from main branch
Sometimes you work on branch but in between main/master branch get updated by other team mates. Due to which your branch will not be in sync with main branch. So while raising merge request or even after raising a merge request you need to sync your branch with main branch. Below command will help in that.

	git pull origin main

![git-branch-use-1](/images/git-pull-from-branch.PNG)

------------

back to [LearnGitLab](../../LearnGitLab)