pipeline {
    agent any 
    tools {
        maven 'maven-home'
    }
    stages{
        stage("git checkout"){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'gitpassword', url: 'https://github.com/rritsoft/jenkins-cicd-docker-push-image-project.git']]])
                
            }
        }
        stage("maven clean package") {
            steps{
                sh "mvn clean package"
                sh "mvn sonar:sonar"
                //sh "mv target/*.war target/myweb.war"
                
            }
        }
        stage("nexus artifacts  "){

            steps
        }
        stage("docker build "){
            steps{
                sh 'docker build -t anjireddy3993/cicd:5.0  . '
                }
        }
        stage("docker login"){
            steps{
               sh  'docker login -u anjireddy3993  -p ASDasd123$'
        }
    
        stage(" docker push"){
            steps{
                sh 'docker push  anjireddy3993/cicd:5.0'
            }

        }
    
    
    
    
    
    
    }
 }
}