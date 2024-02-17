pipeline {
    agent any
    
    tools {
        terraform 'Terraform'
    }

    environment {
        //Credentials for Prod environment
       AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
       AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
   }
    
    stages {
        stage('Git checkout') {
            steps {
                echo 'cloning project codebase'
                git branch: 'main', url: 'https://github.com/Michaelgwei86/project-test1-repo.git'
                sh 'ls'
                sh 'pwd'
            }
        }
            
        stage ('Verifying AWS configurations') {
            steps {
                sh 'aws s3 ls'
            }
        }
        
        stage ('Verify Terraform version'){
            steps {
                echo 'Verifying the terraform version'
                sh 'terraform --version'
            }
        }
        
        stage ('Terraform init') {
            steps{
                echo 'Initializing terraform'
                sh 'terraform init'
            }
        }
        
        stage ('Terraform plan') {
            steps{
                echo "View resources to be created"
                sh 'terraform plan'
            }
        }
        
        stage ('Terraform apply'){
            steps{
                echo "Appying changes to our environment"
                sh 'terraform apply --auto-approve'
            }
        }
        
        stage ('Manual approval to Delete'){
            steps{
                input 'Approval required to clean environment'
            }
        }
        
        stage ('Terraform Destroy') {
            steps {
                echo 'Destroying infrastructure'
                sh 'terraform destroy --auto-approve'
            }
        }
    
}

}
