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
        withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'maven-3.9.9', mavenSettingsConfig: '', traceability: true) {
            sh 'mvn clean install'
        }
        //stage('Clean and Install') { 
            //steps { 
                //sh 'mvn clean install'
            //}
        //} 
    
    }
}
