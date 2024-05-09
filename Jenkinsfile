pipeline {
  agent any
  tools {nodejs "NODEJS"}
  stages {
    stage('wadas build') {
      steps {
        when {
          branch "dev"
        }
        echo "im in DEVELOPERR branch"
        sh 'npm install'
      }
      steps {
        when {
          branch "main"
        }
        echo "im in main branch"
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
