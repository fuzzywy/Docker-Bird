#!groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            sh 'build/install(for development).sh'
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
