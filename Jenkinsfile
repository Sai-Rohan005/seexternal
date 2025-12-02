pipeline {
    agent any
    tools{
        maven 'MAVEN_HOME'
    }
    stages {
        stage('git repo & clean') {
            steps {
                bat "git clone https://github.com/Sai-Rohan005/seexternal.git"
                bat "mvn clean -f  seexternal"
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
