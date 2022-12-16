pipeline {
    agent {
        docker {
            image 'maven:3.8.1-adoptopenjdk-11'
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install '
            }
        }
    }

        stage('Docker Build') {
    	agent any
             steps {
      	sh 'docker build -t java-hello-world-with-maven:latest .'
      }
    }	
	
}
