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
                echo 'docker installed'

            }
        }
        stage ('publishing image to nexsus') {

            steps {
                echo 'publish image'
            }
        }
        stage ('deploy in k8s cluster') {
            
            steps {
               echo 'deploy completed'

            }
        }
        
           
    }
}
