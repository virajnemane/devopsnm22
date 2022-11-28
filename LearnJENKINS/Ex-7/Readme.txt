In sonarqube ec2
=================
docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest

default username = admin
default password = admin

Generate token -- > Adminitration --> Security --> User

In Jenkins ec2
===============
install java11
yum install java-11-amazon-corretto

In Jenkins Console
===================
Manage Jenkins --> Global tool configuration --> JDK --> java11 --> java path --> /usr/lib/jvm/java-11

Install plugin - 	"SonarQube Scanner"

Manage Jenkins --> Configure System --> SonarQube Servers --> Provide Name, Server URL, Server authentication and do tick on Environment Varisables checkbox

In CI/CD
=========
        stage('security scan') {
            steps {
                withSonarQubeEnv(credentialsId: 'MySonar', installationName: 'MySonar') {
                    withMaven(jdk: 'java11',maven: 'MyMaven') {
                        sh 'mvn clean package sonar:sonar'
                    }
                }
            }
        }