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
                script {
                    echo 'Building Docker Image...'
                    echo 'sudo docker build -t springapp .'
                    sh 'sudo docker build -t springapp .'
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    echo 'Running Docker Container...'
                    echo 'sudo docker run -dit --name myapp -p 8081:8080 springapp'
                    sh 'sudo docker run -dit --name myapp -p 8081:8080 springapp'
                }
            }
        }
        
        stage('Test with Curl') {
            steps {
                script {
                    echo 'Testing with Curl...'
                    echo 'curl http://localhost:8081'
                    sh 'curl http://localhost:8081'
                }
            }
        }
    }
}
