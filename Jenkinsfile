pipeline {
    agent none
    stages {
        stage('Back-end') {
            agent {
                docker { 
				image 'maven:3.8.1-adoptopenjdk-11'
				args '-v $HOME/.m2:/root/.m2'
				reuseNode true
				}
            }
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Front-end') {
            agent {
                docker { 
				image 'node:16.13.1-alpine' 
				}
            }
            steps {
                sh 'node --version'
            }
        }
    }
}

