pipeline {
    agent any
    tools { 
        maven 'maven-3.9.9' 
    } 

    environment {
        DOCKERHUB_CREDENTIALS = credentials ('docker-hub-credentials')
    }
    stages {

        stage('Checkout Code') {
            steps {
                script {
                    checkout([
                        $class: 'GitSCM',
                        branches: [[name: "*/master"]],
                        userRemoteConfigs: [[url: 'https://github.com/chetan2967/code']]
                    ])
                }
            }
        }
        
        stage('Clean and Install') {
            steps { 
                sh 'mvn clean install'
            }
        }
        
        stage('Build Docker Image') { 
            steps { 
                script { 
                    // Build the Docker image 
                    sh "docker build -t my-java-app ." 
                } 
            } 
        }
        
        stage('Push to Docker Hub') {  
            steps {  
                script { 
                    sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'  
                    sh 'docker push my-java-app:latest' 
                    sh 'docker logout' 
                }  
            }  
        } 
    }
}
