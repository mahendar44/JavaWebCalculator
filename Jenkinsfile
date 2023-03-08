pipeline {

    agent any

    stages {

        stage('hello') {
            
            steps{
                echo 'hello world'  
            }
        }
        stage ('build') {

            steps {
                sh 'mvn clean package'
                sh 'mvn pacakge'
            }
        }
        stage ('test') {

            steps {
                echo 'test completed'
            }
        }
        stage ('deploy') {

            steps {
                echo 'deploy completed'
            }
        }
    }
}
