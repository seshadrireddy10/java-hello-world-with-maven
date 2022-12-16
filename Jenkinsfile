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
	
	
        stage('Docker image build'){

         checkout scm
         def dockerfile = 'Dockerfile.test'
         def customImage = docker.build("my-image:${env.BUILD_ID}","-f ${dockerfile} ./dockerfiles") 
    }
	
}
