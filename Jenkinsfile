pipeline {
agent any
stages {
    
    stage('terraform init'){
        steps{
            sh 'terraform init'
        }
    }
    stage('terraform aplly'){
        steps{
            sh 'terraform apply --auto-approve'
        }
    }
}
}