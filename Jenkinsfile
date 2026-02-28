pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "shravanivasa/student-survey:v1"
        KUBECONFIG = "/var/jenkins_home/.kube/config"
    }
    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/shravanivasa/student-survey.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }
        stage('Push') {
            steps {
                sh 'docker push $DOCKER_IMAGE'
            }
        }
        stage('Deploy') {
            steps {
                sh 'kubectl --kubeconfig=$KUBECONFIG rollout restart deployment/student-survey'
            }
        }
    }
}
