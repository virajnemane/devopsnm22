## Create simple playbook

Let's create a simple playbook which will do 

- Install and configure apache server with customized static content path (/opt/htdocs).
- Copy static content in proper path (/opt/htdocs/index.html)
- Start Apache service
- Cron job to start Apache on Monday at 9:50 AM
- Cron job to stop Apache on Friday at 6:00 PM

We can follow below steps.

- First of all create 2 servers, one will be Control Node(Ansible Server) and another will be Manage Node(Web server) using **[ansible-userdata.sh](../../userdata-scripts/ansible-userdata.sh)**

**Note** - *In AWS console, give Name to each server, so you won't get confuse which is ansible server and which is web server. Alos note down IP address of each server in notepad and it's name.*

- Before starting ansible code, just make sure **httpd** package is not installed in **Web server** because through ansible, we are going to install it.

        rpm -qa |grep httpd

- Open Ansible repo in visual code, create *infra-config/ansible/Lab* directory.
- Copy [httpd.conf](./Lab/httpd.conf) file in Lab directory.
- Copy [index.html](./Lab/index.html) file in Lab directory.
- Create a **webserver.yaml** playbook in Lab directory.

        ---
        - name: "Install and configure webserver"
            hosts: "{{ HOSTS }}"
            become: yes
            tasks:
                - yum: 
                    name: httpd 
                    state: latest

Let's understand what's does it means : 
- Line-1 : Start of yaml file or document
- Line-2 : Name/Description of the playbook. Note single dash(-), indicating object is starting.
- Line-3 : Refering hosts on which ansible playbook will run. We have used HOSTS variable here. To use variable we need to put it inside double curly braces. {{ VARIABLE-NAME}}
- Line-4 : Indicating playbook will run a "ROOT" user if you have not mentioned become_user parameter.
- Line-5 : Indicating tasks section is starting. This section will have list of task inside it.
- Line-6 : Module which need to call. Note dash(-) before the module indicating new task under task section.
- Line-7 : Parameter of yum module
- Line-8 : Parameter of yum module 

So first task will call yum module and it will make sure if httpd package is not installed, it will install latest package. If httpd package is already installed but it is not latest, then it will update it to latest version.

Let's run this playbook. Yes, whenver you start to write playbook, **write one task and test it and then go for next one.**

- We can run playbook with below command.

        ansible-playbook -e HOSTS=webserver webserver.yaml

Let's understand this.
- ansibel-playbook is a command to run playbooks.
- We have used HOSTS variable, but have not defined anywhere inside ansible code, so we have provided it at command line. -e parameter used to define variable at command line.
- Playbook name which need to run.

Run above command and check output. In output you will have text in different colour.
- **Red** colour indicate, task failed.
- **Yellow** colour indicate, task performed and something has changed inside web server.
- **Green** colour indicate, task performed but nothing is changed because it was previously performed or it is already there what task was going to do.

Awesome....You are doing great job.

Now with the help of ansible documentation page try to write below tasks.

- Take backup of httpd.conf file. (Hint - Use copy module.)
- Copy our httpd.conf file in the web server. (Hint - Use copy module.)
- Copy index.html file in /opt/htdocs in the web server. (Hint - Use copy module.)
- Set cron job to stop webserver on Friday at 6:00 PM (Hint - Use cron module.)
- Set cron job to start webserver on Monday at 9:50 AM (Hint - Use cron module.)
- Start apache service (Hint - Use service module.)

Ansible document link - https://docs.ansible.com/ansible/latest/index.html

Final playbook will look like this [webserver.yaml](./Lab/webserver.yaml)


------

Back to [LearnANSIBLE](../Readme.md)

Go to [Lab-4](../Lab-4/Readme.md)