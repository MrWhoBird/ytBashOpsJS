pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/MrWhoBird/ytBashOps.git'
                sh 'docker build -t devopst/bash-ops .'
                sh 'docker run --name bashOps -p 3000:3000 devopst/bash-ops'
            }
        }
    }
}
