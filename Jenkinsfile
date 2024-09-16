pipeline {
        agent any
        environment {
        CI = 'true'
    }
    tools{
     nodejs 'nodejs'
    }

    stages {
        stage('Checkout Code') {
            steps {
                // Checkout code from the repository
               git url:'https://github.com/NandhiniRavi01/devops_try',branch:'main'
            }
        }

       

        

        stage('Build') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build Application') {
            steps {
                // Run build script defined in package.json
                sh 'npm run build'
            }
        }

        stage('Run Application') {
            steps {
                // Run your Node.js app
                sh 'node react js/src/index.js'
            }
        }
    }

    post {
        always {
            // Cleanup node_modules after running
            sh 'rm -rf node_modules'
        }
    }
}
