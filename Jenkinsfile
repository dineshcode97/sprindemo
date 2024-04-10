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
                    sleep time: 3, unit: 'MINUTES'
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    echo 'Running Docker Container...'
                    echo 'sudo docker run -dit --name myapp -p 8081:8080 springapp'
                    sleep time: 5
                }
            }
        }
        
        stage('Test with Curl') {
            steps {
                script {
                    echo 'Testing with Curl...'
                    echo 'curl http://localhost:8081'
                }
            }
        }
    }
}
