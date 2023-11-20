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
    stage('pushImageRegistry'){
        steps {
            script {
                sh """
                  docker login -u vsiraparapu -p dckr_pat_d2Ze8mBpKEfPeVQMsF__XH_-ynI
                  docker push vsiraparapu/hello-world:latest
                  docker tag vsiraparapu/hello-world:latest vsiraparapu/hello-world:${BUILD_NUBER}
                  docker push vsiraparapu/hello-world:${BUILD_NUMBER}
                
                """
            }
        }
    }

  }

}