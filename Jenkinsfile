pipeline {

    agent {
        label 'docker-ruby-agent'
    }

    stages {

        stage('Test') {
            steps {
                echo "sudo -St gem install bundler"
            }
        }

        stage('Build') {
            steps {
                sh 'bundle'
            }
        }

        stage('Publish artefact') {
            steps {
                echo "Just checking the artefact has been created. If so, tag it and publish it should be simple."
            }
        }
    }
}
