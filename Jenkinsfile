pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'master', url: 'https://github.com/VikkiSokhanska/terraform_lab8_repo.git'
            }
        }

        stage('Terraform Init') {
            steps {
                withCredentials([file(credentialsId: 'terraform-sa-key', variable: 'GOOGLE_CREDENTIALS')]) {
                    sh '''
                        export GOOGLE_APPLICATION_CREDENTIALS=$GOOGLE_CREDENTIALS
                        terraform init
                    '''
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                withCredentials([file(credentialsId: 'terraform-sa-key', variable: 'GOOGLE_CREDENTIALS')]) {
                    sh '''
                        export GOOGLE_APPLICATION_CREDENTIALS=$GOOGLE_CREDENTIALS
                        terraform plan
                    '''
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Apply changes?'
                withCredentials([file(credentialsId: 'terraform-sa-key', variable: 'GOOGLE_CREDENTIALS')]) {
                    sh '''
                        export GOOGLE_APPLICATION_CREDENTIALS=$GOOGLE_CREDENTIALS
                        terraform apply -auto-approve
                    '''
                }
            }
        }
    }
}

