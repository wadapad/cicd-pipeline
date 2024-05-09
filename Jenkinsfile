pipeline {
    agent any
    tools {nodejs "NODEJS"}
    stages {
        stage('wadas build') {
            steps {
                sh 'npm install'
            }
        }
        stage('test') {
            steps {
                sh 'chmod +x ./deliver.sh'
                sh 'chmod +x ./kill.sh'
                sh './deliver.sh'
		input message: 'Finished?'
		sh './kill.sh'
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
