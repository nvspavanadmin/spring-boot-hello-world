pipeline {
   agent any
    environment {
        def scannerHome = tool 'sonarScanner5.0.1'
    }
    stages {
        stage("Build"){
            steps {
               script {
                sh "mvn install"
                sh "mv target/*.jar target/spring-boot-2-hello-world-1.0.2-SNAPSHOT-${BUILD_NUMBER}.jar"
               }
            }
        }

        stage("Unit-Test"){
            steps {
                script {
                    sh "mvn test"
                }
            }
        }

        stage("Deploy - Dev-AWS"){
            steps {
               echo "Deploying to DEV aws"
            }

        }

    }
    post {
        always {
             cleanWs()
        }
    }
}