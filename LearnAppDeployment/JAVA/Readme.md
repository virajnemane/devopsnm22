** Use amazon ami-2 linux **

### Below steps need to be done by root user.

- Create application user as **basicform** and set its password

        useradd basicform
        passwd basicform

- Create required directory structure for the application.

        mkdir /opt/basicform
        chown basicform:basicform /opt/basicform

- Install git package

        yum install git -y

### Below steps need to be done by basicform user, which is our application user.

- Create requied directory structure for the application

        cd /opt/basicform
        mkdir bin conf build software logs

- Install java 

        cd /opt/basicform/software
        mkdir java
        cd java
        wget https://corretto.aws/downloads/latest/amazon-corretto-11-x64-linux-jdk.tar.gz
        tar -zxvf amazon-corretto-11-x64-linux-jdk.tar.gz
        JDK_VER=`ls |grep -v tar.gz | sed 's/amazon-corretto-//g' | sed 's/-linux-x64//g'`
        ln -s amazon-corretto-${JDK_VER}-linux-x64 jdk

- Install maven

        cd /opt/basicform/software
        mkdir m2
        cd m2
        MAVEN_VER=`curl --silent https://downloads.apache.org/maven/maven-3/|grep href | tail -n1 | awk '{split($5,c,">"); split(c[2],d,"/");print d[1]}'`
        wget -N https://downloads.apache.org/maven/maven-3/${MAVEN_VER}/binaries/apache-maven-${MAVEN_VER}-bin.zip
        unzip apache-maven-${MAVEN_VER}-bin.zip
        ln -s apache-maven-${MAVEN_VER} maven

- Install tomcat

        cd /opt/basicform/software
        mkdir tomcat
        cd tomcat
        TOMCAT_VER=`curl --silent http://mirror.vorboss.net/apache/tomcat/tomcat-9/ | grep v9 | awk '{split($5,c,">v") ; split(c[2],d,"/") ; print d[1]}'`
        wget -N http://mirror.vorboss.net/apache/tomcat/tomcat-9/v${TOMCAT_VER}/bin/apache-tomcat-${TOMCAT_VER}.zip
        unzip apache-tomcat-${TOMCAT_VER}.zip        
        ln -s apache-tomcat-${TOMCAT_VER} tomcat

- Create environment variable require for application to run
    - Create [common.sh](./common.sh) at /opt/basicform/bin/common.sh and give execute permission

            vim /opt/basicform/bin/common.sh
            chmod 700 /opt/basicform/bin/common.sh
    
    - add below line at the bottom of /home/basicform/.bash_profile

        . /opt/basicform/bin/common.sh
    
    - logout and login with basicform user again
    - execute below command to check java version

            java --version

- Create [start_tomcat.sh](./start_tomcat.sh) and [stop_tomcat.sh](./stop_tomcat.sh) inside /opt/basicform/bin and give execute permission

        cd /opt/basicform/bin
        chmod * 700

- Open browser, put http://<public-ip>:8080 of your application server in address bar, you should able to see tomcat page.

Note - You need to open 8080 port on security group.

- Compile and build your application

        cd /opt/basicform/build
        git clone https://github.com/indorenilesh/basicform.git
        cd basicform
        mvn clean install

- Deploy application

        cd /opt/basicform/build/basicform/target
        cp basicform.war /opt/basicform/software/tomcat/tomcat/webapps

- Open application in browser by typing http://<public-ip>:8080/basicform