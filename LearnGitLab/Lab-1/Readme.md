#### SVC
SVC means [Source Version Control](./what-is-version-control.md)

#### Install gitbash
you can refer [installation document](../../PrepareSystem/install-gitbash.md)

#### Create account with gitlab.com

------------
#### Configure your git
    git config --global user.name "Your Name"

    git config --global user.email your@email.id

![Configure your git](/images/git-configure.PNG)

------------
#### Authentication

We require personal access token to work with git. Git password won't work in this scenario. Password will only use to login on gitlab UI console.

generate [personal access token](../generate-token.md)

------------
#### Create repository
Login to gitlab UI console, click on **Menu** --> **Projects** --> **Your Projects**

![gitlab-create-repo-1](/images/gitlab-create-repo-1.PNG)

Click on **New project**

![gitlab-create-repo-1](/images/gitlab-create-repo-2.PNG)

Click on **Create blank project**

![gitlab-create-repo-1](/images/gitlab-create-repo-3.PNG)

Provide required information and click on **Create project**

![gitlab-create-repo-1](/images/gitlab-create-repo-4.PNG)

------------

#### Clone repository

###### Login on gitlab UI console, and get repo **https** url.

![git-clone-1](/images/gitlab-create-repo-5.PNG)

###### clone git repo on server/local system

Now here, whenever you use clone,push,pull command it will ask password if repository is private.
To solve this, we can store our credential locally.
Lets [configure git](./configure-token.md) to store credential locally.

    git clone https://gitlab.com/indorenilesh2/myfirstrepo.git

![git-clone-2](/images/gitlab-create-repo-6.PNG)



------------

back to [LearnGitLab](../../LearnGitLab)