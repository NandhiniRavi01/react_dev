pipeline {
    agent any
    tools {
        nodejs : "nodejs"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('my-react-app')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    def app = docker.image('my-react-app')
                    app.withRun('-p 3000:3000') { c ->
                        echo "Container is running. Checking logs..."
                        sh "docker logs ${c.id}"
                    }
                }
            }
        }
    }
}
