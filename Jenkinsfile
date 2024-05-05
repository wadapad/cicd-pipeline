pipeline {
    agent { docker { image 'node:20.11.1-alpine3.19' } }
    stages {
        stage('build') {
            steps {
                sh 'node --version'
            }
        }
        stage('test') {
            steps {
                echo 'Testing...'
            }
        }
        stage('imagebuild') {
            steps {
                echo 'Building docker image...'
            }
        }
        stage('deploy') {
            steps {
                echo 'Deploying...'
            }
        }
    }
}
