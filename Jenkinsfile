pipeline {
  environment {
    GH_CREDS = credentials('jenkins-x-github')
  }
  agent {
    label "jenkins-go"
  }
  stages {
    stage('CI Build') {
      when {
        branch 'PR-*'
      }
      steps {
        checkout scm
        container('go') {
          sh "echo TODO"
        }
      }
    }
  }
}
