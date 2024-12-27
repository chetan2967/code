pipeline {
    agent any
    tools { 
        maven 'maven-3.9.9' 
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
    
    }
}
