pipeline {
    agent any
    tools{
        maven 'MAVEN_HOME'
    }
    stages {
        stage('clean') {
            steps {
                bat "mvn clean -f seexternal"
            }
        }
        stage('install') {
            steps {
                bat "mvn install -f seexternal" 
            }
        }
        stage('test') {
            steps {
                bat "mvn test -f seexternal"
            }
        }
        stage('package') {
            steps {
                bat "mvn package -f seexternal"
            }
        }
    }
}
