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
        sh 'docker logout || true'
        sh 'docker build -t $DOCKER_IMAGE -f Dockerfile .'
    }
}
        stage('Push') {
    steps {
        withCredentials([usernamePassword(
            credentialsId: 'dockerhub_creds',
            usernameVariable: 'DOCKER_USER',
            passwordVariable: 'DOCKER_PASS'
        )]) {
            sh 'echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin'
            sh 'docker push $DOCKER_IMAGE'
        }
    }
}
        stage('Deploy') {
            steps {
                sh 'kubectl --kubeconfig=$KUBECONFIG rollout restart deployment/student-survey'
            }
        }
    }
}
