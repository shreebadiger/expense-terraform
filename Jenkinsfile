pipeline{
    agent{
        node{
            label 'workstation'
        }
  }
    options{
        ansiColor('xterm')
    }
    stages{

    stage('apply'){
        steps{
              sh 'terraform init -backend-config=env-prod/state.tfvars'
            sh 'terraform destroy -auto-approve -var-file=env-prod/main.tfvars'

        }  
    }
  }
}
