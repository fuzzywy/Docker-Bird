#!groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'chmod +x build/build.sh'
                sh 'build/build.sh'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
