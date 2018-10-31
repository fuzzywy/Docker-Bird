#!groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            sh 'cd build'
            sh 'build.sh'
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
