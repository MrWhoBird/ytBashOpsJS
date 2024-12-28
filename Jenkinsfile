pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                git branch: 'main', url: 'https://github.com/MrWhoBird/ytBashOps.git'
            }
            steps {
                sh 'docker build -t devopst/bashOps .'
            }
            steps {
                sh 'docker run --name bashOps -p 3000:3000 devopst/bashOps'
            }
        }
    }
}
