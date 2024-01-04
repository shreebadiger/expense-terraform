    pipeline{
        agent{
            node{
                label 'workstation'
            }
    }
        options{
            ansiColor('xterm')
        }
        parameters {
            choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'cHOOSE TF action')
        }
        stages{
            stage('TF ACTION'){
            parallel{
              stage('DEV ENV'){
                steps{
                sh 'terraform init -backend-config=env-dev/state.tfvars'
                sh 'terraform ${ACTION} -auto-approve -var-file=env-dev/main.tfvars'
               }
            } 
              stage('PROD ENV'){
               steps{
                sh 'terraform init -backend-config=env-prod/state.tfvars'
                sh 'terraform ${ACTION} -auto-approve -var-file=env-prod/main.tfvars'
               } 

            }
          }  
        }
      }
    }
    
