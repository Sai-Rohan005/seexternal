pipeline {
    agent any
    tools{
        maven 'MAVEN_HOME'
    }
    stages {
        stage('git repo & clean') {
            steps {
                bat "git clone https://github.com/Sai-Rohan005/seexternal.git"
                bat "mvn clean -f seexternal/src/main/webapp"
            }
        }
        stage('install') {
            steps {
                bat "mvn install -f seexternal/src/main/webapp" 
            }
        }
        stage('test') {
            steps {
                bat "mvn test -f seexternal/src/main/webapp"
            }
        }
        stage('package') {
            steps {
                bat "mvn package -f seexternal/src/main/webapp"
            }
        }
    }
}
