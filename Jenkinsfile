pipeline {
    agent any
    
    stages {
        stage('Git Pull') {
            steps {
                git branch: 'main', url: 'https://github.com/dineshcode97/sprindemo.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'sudo docker build -t springapp .'
            }
        }
        
        stage('Run Docker Container') {
            steps {
                sh 'sudo docker run -dit --name myapp -p 8081:8080 springapp'
            }
        }
        
        stage('Test with Curl') {
            steps {
                script {
                    sh 'curl http://localhost:8081'
                }
            }
        }
    }
}
