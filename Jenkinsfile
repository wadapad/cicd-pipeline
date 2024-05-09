pipeline {
  agent any
  tools {nodejs "NODEJS"}
  stages {
    stage('dev branch build') {
      when {
        branch "dev"
      }
      steps {
        echo "im in DEVELOPERR branch"
        sh 'npm install'
      }
    }
    stage('build in main branch') {
      when {
        branch "main"
      }
      steps {
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
