pipeline {
    agent any 
    tools {
        maven 'maven-home'
    }
    stages{
        stage("git checkout"){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'gitpassword', url: 'https://github.com/rritsoft/jenkins-cicd-docker-pubat-image-project.git']]])
                
            }
        }
        stage("maven clean package") {
            steps{
                bat 'mvn clean package'
               
                //bat "mv target/*.war target/myweb.war"
                
            }
        }
        // stage("nexus artifacts  "){

        //     steps{
        //         echo "  this  THIS  IS  TEST - SECTION "
        //     }
        // }
        stage("docker build "){
            steps{
                bat 'docker build -t anjireddy3993/cicd:5.0  . '
            }
        }
        stage("docker login"){
            steps{
               bat  'docker login -u anjireddy3993  -p ASDasd123$'
            }
        }
         
        stage(" docker pubat"){
            steps{
                bat 'docker push  anjireddy3993/cicd:5.0'
            }

        }
    
    
    
    
    
    
    }
}
