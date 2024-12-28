pipeline {
    agent any
    stages {
        stage('Git') {
            steps {
                git branch: 'main', url: 'https://github.com/MrWhoBird/ytBashOps.git'
            }
        }
        stage('Clean') {
            steps {
                catchError {                
                    sh 'docker stop devopst/bash-ops'
                    sh 'docker rm devopst/bash-ops-cont'
                    sh 'docker rmi devopst/bash-ops-img'
                }
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t devopst/bash-ops-img .'
                sh 'docker run --name bash-ops-cont -d -p 3000:3000 devopst/bash-ops-img'
            }
        }
    }
}
