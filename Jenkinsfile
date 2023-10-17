pipeline {
    agent { node { label 'AGENT-1' } }
    parameters {
        string(name: 'version', defaultValue: '1.4.0', description: 'Which version to deploy')
    }
    stages {
        stage('Deploy') {
            steps {
                echo "Deploying....."
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
