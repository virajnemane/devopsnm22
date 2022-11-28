#
#   In this exercise we will integrate sonarqube scan with our app deploy pipeline
#

1) spin ec2 system with t2.medium type with sonarqube-userdata.sh
2) Once instance is up, login with admin user, password will be admin, and then switch to root user.
3) run sonarqube container
    docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
4) Open sonarqube console with url http://<PUBLIC_IP_Of_SONARQUBE>:9000/
5) Login in sonarqube dashboard admin is username and password also admin
6) It will ask you to change password, change it, but remember new password now.
7) Got ot Administration --> Security --> Users
8) You will find Admin user, click on "update token" button.
9) Enter token name as "bform" and click on generate.
10) Click on "Copy" button to copy token, and paste it in seperate notepad.
11) Click on Done
12) Login on Jenkins Dashboard --> Manage Jenkins --> Manage Credentials --> Add Credentials
    Kind - Secret text
    Scope - Global
    Secret - <paste token which is copied in notepad in step 10>
    ID - sqube
    Description - Auth for sonarqube
13) Go to Dashboard --> Manage Jenkins --> Manage Plugins --> Available --> search "sonar" --> select "SonarQube Scanner" --> Install without restart
14) Go to Dashboard --> Manage Jenkins --> Configure System --> SonarQube servers
15) Select checkbox for Environment variables
16) Click on "Add Sonarqube" button
    Name - sqube-server
    Server URL - http://<PRIVATE_IP_SONARQUBE>:9000
    Server authentication token - sqube (select from dropdown menu) (You have created this in step 12)
17) Click on "Apply" and then "Save"
18) add below code in your pipeline code and run pipeline.
      stage('scan') {
          steps {
              withSonarQubeEnv(credentialsId: 'sqube', installationName: 'sqube-server') {
                  withMaven(maven: 'MyMaven') {
                  sh 'mvn sonar:sonar \
                  -Dsonar.projectKey=BasicForm'
                  }
                }
          }
      }
19) Open sonarqube console and click on Projects, then click on "BasicForm"
