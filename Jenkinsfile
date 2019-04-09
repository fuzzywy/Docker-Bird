#!groovy
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'chmod +x build/build-product.sh'
                sh 'build/build-product.sh'
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
				sh 'chmod +x build/autoDeploy.sh'
                sh 'build/autoDeploy.sh'
            }
        }
    }
}
