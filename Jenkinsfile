pipeline {
    agent any
    tools{
        maven 'MAVEN_HOME'
    }
    stages {
        stage('git repo & clean') {
            steps {
                bat "git clone https://github.com/Sai-Rohan005/seexternal.git"
                bat "mvn clean -f myjavaapp"
            }
        }
        stage('install') {
            steps {
                bat "mvn install -f myjavaapp" 
            }
        }
        stage('test') {
            steps {
                bat "mvn test -f myjavaapp"
            }
        }
        stage('package') {
            steps {
                bat "mvn package -f myjavaapp"
            }
        }
    }
}
