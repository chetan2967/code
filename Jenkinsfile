pipeline {
    agent any

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
    
    }
}
