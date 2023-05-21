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
            sh 'terraform graph > graph.dot'
            sh 'dot -Tpng -o graph.dot -o graph.png'
            sh 'aws s3 cp ./graph.png s3://terraform-bucket-alexfgdg'
        }
    }
    // stage('upload file to s3'){
    //     steps {
    //             withAWS(credentials: 'terraform_key', region: 'us-east-1') {
    //             s3Upload(bucket: 'terraform-bucket-alexfgdg', path: '/exercise', includePathPattern: '*/graph.png')
                
    //             }
    //         }
    // }
}
}