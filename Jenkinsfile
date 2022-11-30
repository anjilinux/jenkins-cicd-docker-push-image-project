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






























// pipeline {

//     agent any

//     tools {

//       maven 'maven_home'

//     }

//     stages {

//       stage('maven test ') {

//         steps{

//             checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rritsoft/hp-war-test-.git']]])

//             bat 'mvn clean install'

//             bat 'docker build -t  jenkins1:latest   C:/Users/hi/Desktop/dockertest1'

//             bat 'docker tag jenkins1  jenkins1:latest'

//             bat 'docker tag jenkins1  jenkins1:latest'

//             withCredentials([usernamePassword(credentialsId: 'DOCKER', passwordVariable: 'ASDasd123$', usernameVariable: 'anjireddy3993')]) {

//                 bat "docker login -u ${env.anjireddy3993} -p ${env.ASDasd123$}"

//                 bat 'docker push jenkins1:latest'

//                 bat 'docker push jenkins:latest'

//     // some block

// }


//             // sh 'docker build -t nginxtest:latest .'

//             //       sh 'docker tag nginxtest nikhilnidhi/nginxtest:latest'

//             //     sh 'docker tag nginxtest nikhilnidhi/nginxtest:$BUILD_NUMBER'

               

//              //     withDockerRegistry([ credentialsId: "dockerHub", url: "" ]) {

//         //   sh  'docker push nikhilnidhi/nginxtest:latest'

//         //   sh  'docker push nikhilnidhi/nginxtest:$BUILD_NUMBER'

 

//         // withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {

//         //  sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"

//         //   sh 'docker push shanem/spring-petclinic:latest'

 

//        }

//       }

   

 

//     }

 

// }
// =========
// pipeline {

//     agent any

//     tools {

//       maven 'maven_home'

//     }

//     stages {

//       stage('maven test ') {

//         steps{

//             checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rritsoft/hp-war-test-.git']]])

//             bat 'mvn clean package'

//              bat 'docker build -t  jenkins1   C:/Users/hi/Desktop/dockertest1'

//              bat  'docker login -u anjireddy3993  -p ASDasd123$'

 

//             //  withCredentials([string(credentialsId: 'DOCKER-ASDasd123$', variable: 'text')]) {

//             //     bat 'docker login -u anjireddy3993  -p ${text}'

//             //   }  

//           }

 

//         }

//     }  

 

// }





