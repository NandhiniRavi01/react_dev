pipeline {
    agent any
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

       

        stage('Install Node.js') {
            steps {
                script {
                    

                    // Install Node.js 18.x
                    sh '''
                    curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
                    sudo apt-get install -y nodejs
                    '''
                }
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install npm dependencies
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
                sh 'node rect js/src/index.js'
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
