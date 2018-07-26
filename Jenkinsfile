pipeline {

    agent {
        label 'docker-ruby-agent'
    }

    stages {

        stage('Test') {
            steps {
                sh 'bundle exec rake'
            }
        }

        stage('Build') {
            steps {
                sh 'ruby sinatra.rb'
            }
        }

        stage('Publish artefact') {
            steps {
                echo "Just checking the artefact has been created. If so, tag it and publish it should be simple."
            }
        }
    }
}
