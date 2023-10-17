pipeline {
    agent { node { label 'AGENT-1' } }
    options {
        ansiColor('xterm')
    }
    parameters {
        string(name: 'version', defaultValue: '1.4.0', description: 'Which version to deploy')
    }
    stages {
        stage('Deploy') {
            steps {
                echo "Deploying....."
                echo "version from params: ${params.version}"
            }
        }

        stage('Init') {
            steps {
                sh """
                    cd terraform
                    terraform init -reconfigure
                """
            }
        }

        stage('plan') {
            steps {
                sh """
                    cd terraform
                    terraform plan
                """
            }
        }

    }

    post{
        always{
            echo 'cleaning up workspace'
            deleteDir()
        }
    }

}
