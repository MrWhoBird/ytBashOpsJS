pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/MrWhoBird/ytBashOps.git'
                sh 'docker stop devopst/bash-ops'
                sh 'docker rm devopst/bash-ops'
                sh 'docker rmi devopst/bash-ops'
                sh 'docker build -t devopst/bash-ops .'
                sh 'docker run --name bash-ops -d -p 3000:3000 devopst/bash-ops'
            }
        }
    }
}
