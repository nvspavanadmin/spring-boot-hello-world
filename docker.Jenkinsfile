pipeline {
  agent any

  stages {
    stage('Build-Code'){
        steps {
            script {
                sh "mvn install"
            }
        }
    }
    stage('imageBuild'){
        steps {
            script {
                sh "docker build -t vsiraparapu/hello-world:latest ."
            }
        }
    }
    // stage('pushImageRegistry'){
    //     steps {
    //         script {
    //             sh "docker push vsiraparapu/hello-world:latest"
    //         }
    //     }
    // }

  }
  
}