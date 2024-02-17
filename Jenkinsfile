
pipeline{
    agent any

    stages{
        stage("Git checkout"){
            steps{
                echo "Cloning project codebase"
                git branch: 'main', url: 'https://github.com/Michaelgwei86/effulgencetech-devops-fully-automated-infra.git'
            }
            post{
                always{
                    echo "========always========"
                }
                success{
                    echo "========A executed successfully========"
                }
                failure{
                    echo "========A execution failed========"
                }
            }
        }
    }
    post{
        always{
            echo "========always========"
        }
        success{
            echo "========pipeline executed successfully ========"
        }
        failure{
            echo "========pipeline execution failed========"
        }
    }
}