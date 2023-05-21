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
    stage('convert to graph'){
        steps{
            sh 'terraform graph | dot -Tdot > graph.dot'
            sh 'cd ~/workspace/terraform_job'
            sh 'dot -Tpng -o graph.png graph.dot'
        }
    }
    stage('upload file to s3'){
        steps {
                withAWS(credentials: 'terraform_key', region: 'us-east-1') {
                s3Upload(bucket: 'terraform-bucket-alexfgdg', path: '/exercise', includePathPattern: '*/graph.png')
                
                }
            }
    }
}
}