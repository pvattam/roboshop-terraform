pipeline {
  agent {
    node {
      label "workstation"
    }
  }

  options {
    ansiColor('xterm')
  }

  parameters {
    choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Choose TF Action')
  }

  stages {

     stage('Parameter Store Update') {
        steps {
           dir('PS') {
              git branch: 'main', url: 'https://github.com/pvattam/aws-parameter-store.git'
              sh 'terraform init'
              sh 'terraform apply -auto-approve'
            }
          }
        }

    stage('TF Action') {
      parallel {

        stage('DEV Env') {
          steps {
            dir('DEV') {
              git branch: 'main', url: 'https://github.com/pvattam/roboshop-terraform.git'
              sh 'terraform init -backend-config=env-dev/state.tfvars'
              sh 'terraform ${ACTION} -auto-approve -var-file=env-dev/main.tfvars'
            }
          }
        }

//        stage('PROD Env') {
//          steps {
//            dir('PROD') {
//              git branch: 'main', url: 'https://github.com/pvattam/roboshop-terraform.git'
//              sh 'terraform init -backend-config=env-prod/state.tfvars'
//              sh 'terraform ${ACTION} -auto-approve -var-file=env-prod/main.tfvars'
//            }
//          }
//        }

      }


    }

  }

  post {
    always {
      cleanWs()
    }
  }

}