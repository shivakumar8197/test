pipeline {
    agent any
    tools {
        maven "maven-3.8.4"
    }
    stages {
        stage('Build Maven') { 
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/dockers']], extensions: [], userRemoteConfigs: [[credentialsId: 'shivakumar8197', url: 'https://github.com/shivakumar8197/test.git']]])
                  sh "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }
        stage('Build docker image') { 
            steps {
                  sh "docker build -t my-app-1.0 ."
            }
        }
        stage('Build container run') { 
            steps {
                  sh "docker run -d -p 8585:9090 my-app-1.0"
            }
        }
        stage('docker image push') { 
            steps {
                  withCredentials([string(credentialsId: 'docker-hub', variable: 'dockerhub')]) {
                  sh "docker login -u shivakumar8197 -p ${dockerhub}"
}
                  sh "docker push shivakumar8197/my-app-1.0"
            }
        }
    }
}
