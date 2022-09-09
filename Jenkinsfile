node{
    stage('Checkout'){


        git 'https://github.com/mbenguep/test-jenkins'
    }
    stage('compile-package'){
        // getting maven home path

        sh "usr/bin/mvn package"
    }


}