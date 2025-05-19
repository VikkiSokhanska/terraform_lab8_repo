pipeline {
    agent any

    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('terraform_sa_key') 
    }

    stages {
        stage('Clone') {
            steps {
                git branch: 'master', url: 'https://github.com/VikkiSokhanska/terraform_lab8_repo.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Apply changes?'
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
