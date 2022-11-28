#!/bin/sh

# Enable password login
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.org
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd restart

# Add ansible user, password is ansible
# adduser ansible -p '$6$5PttYJK5$x8fDAWg/gMKo89lppG/GFXqfa0NZUEysn0YyYF..veY1sTNUQbgHyY/qIhcd3n2OhR7k8DcODQHw7q0jE8roQ.'
pass=$(perl -e 'print crypt($ARGV[0], "password")' ansible)
useradd -m -p "$pass" "ansible"

# Generate key for ansible user
mkdir /home/ansible/.ssh
chmod 700 /home/ansible/.ssh
ssh-keygen -t rsa -f /home/ansible/.ssh/id_rsa -P ''
chown ansible:ansible /home/ansible/.ssh/ -R

# Give sudo access
cp /etc/sudoers /etc/sudoers.org
echo "ansible    ALL=(ALL)       NOPASSWD:ALL" >> /etc/sudoers

# Create admin user, password is admin
pass=$(perl -e 'print crypt($ARGV[0], "password")' admin)
useradd -m -p "$pass" "admin"
echo "admin    ALL=(ALL)       NOPASSWD:ALL" >> /etc/sudoers

# Install git
yum install git -y

sleep 5

# Install Ansible
#yum install ansible -y
amazon-linux-extras install ansible2 -y