
## Ansible facts
Ansible facts are the host-specific system data and properties to which you connect. A fact can be the IP address, BIOS information, a system's software information, and even hardware information. Ansible facts help the admin to manage the hosts based on their current condition rather than taking the actions directly without having any info about the system's health.

Below ansible ad-hoc command will show you ansible facts for all servers mentioned in inventory.

        ansible web-1 -m setup -i inventory/dev
    
You can see a lot more information about a host. Same thing you can achive through playbook also.

        - hosts: web-1
          tasks:
            - debug:
                var: ansible_facts

Refer [fact.yaml](./Lab/fact.yaml)

        ansible-playbook -i inventory/dev -e HOSTS=web-1 fact.yaml

You can also use filter to get specific information.

**Ad-hoc way**

        ansible web-1 -m setup -i inventory/dev -a "filter=ansible_all_ipv4_addresses"

**Through playbook**

        - hosts: web-1
          tasks:
            - debug:
                var: ansible_facts["all_ipv4_addresses"]

Refer [fact-filter.yaml](./Lab/fact-filter.yaml)

        ansible-playbook -i inventory/dev -e HOSTS=web-1 fact-filter.yaml

Ansible provide this facts as a variable, which we can use in ansible code to make it more flexible.

Ansible facts accessed in ansible ad-hoc command and in ansible playbook are different.

In ansible ad-hoc command

        ansible_facts["ansible_all_ipv4_addresses"]

In ansible playbook 

        ansible_facts["all_ipv4_addresses"]

For more information about ansible facts, you can refer https://docs.ansible.com/ansible/latest/user_guide/playbooks_vars_facts.html

## Ansible condition

#### Condition based on ansible facts

Let's look at below situation.

You want to write a role to install apache webserver, but you are not aware what will be client OS. Because if it is RHEL based system then **yum** module need to use, and if it is Debian based system then **apt** module need to use. In such situation ansible condition and ansible facts will help you.

        - name: "Install and configure webserver"
          hosts: "{{ HOSTS }}"
          become: yes
          tasks:
            - name: Install apache webserver for Debian system
            apt:
                name: apache2
                state: latest
                update_cache: yes
            when: ansible_facts['os_family'] == "Debian"

            - name: Install apache webserver for Amazon system
            yum:
                name: httpd
                state: latest
            when: ansible_facts['os_family'] == "RedHat"    

Refer [generic-apache.yaml](./Lab/generic-apache.yaml)

        ansible-playbook -i inventory/dev -e HOSTS=web-1 generic-apache.yaml

#### Condition based on register variables , ignore errors

Ansible provide us a flexibility to execute command and depend upon its result we can perform next task. 

i.e. In apache installation our document root directory was /opt/htdocs which was custom location and by default it is not exist. We can write a code which will execute command to check directory is exist or not and if it is not exist it will create a directory. 

        - name : "check document root directory"
          command: ls /opt/htdocs
          register: documentroot
          ignore_errors: true

        - name : "Create document root directory"
          command: mkdir /opt/htdocs
          when: documentroot.rc != 0

In above code you can see we have executed ls command and note down its exit code(return code) in first task, and then in second task we have written a condition that if rc is not 0(zero) then create a directory.

Also note down, we have used **ignore_erros: true**. This is sometimes require to continue ansible playbook. By default if any error occure in middle of playbook, ansible playbook will exit, to avoid that we can use this parameter.

Refer [register.yaml](./Lab/register.yaml)

        ansible-playbook -i inventory/dev -e HOSTS=web-1 register.yaml
        
For more information about ansible condition, you can refer https://docs.ansible.com/ansible/latest/user_guide/playbooks_conditionals.html

------

Back to [LearnANSIBLE](../Readme.md)

Go to [Lab-7](../Lab-7/Readme.md)