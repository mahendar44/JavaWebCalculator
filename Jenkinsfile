pipeline {

    agent any 

    stages {

        stage ('build') {

            steps {
                echo "hello world"
            }
        }
        stage ('build') {

            steps {
                sh 'mvn clean pacakge'
            
            }
        }
        stage ('test') {

            steps {
                echo 'mvn test completed'
            }
        }
        stage ('deploy') {

            steps {
                sh 'mvn deploy'
            }
        }
        stage ('docker install') {

            steps {
                scripts {
                    sh 'sudo apt-get install docker.io -y'
                    sh 'sudo dockermod -aG docker ubuntu'
                    sh'sudo systemctl restart docker'
                

                }
            }
        }
        stage ('publishing image to nexsus') {

            steps {
                echo 'publish image'
            }
        }
        stage ('deploy in k8s cluster') {
            
            steps {

                srcipts [
                    #!/bin/bash
                    'kubectl apply -f deployment.yaml'
                    'kubectl apply -f service.yaml'
                ]
            }
        }
        
           
    }
}
