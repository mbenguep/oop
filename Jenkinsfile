node{
    stage('Checkout'){


        git 'https://github.com/mbenguep/test-jenkins'
    }
    stage('compile-package'){
        // getting maven home path
        def mvnHome = tool name: 'maven-3', type: 'maven'

        sh "${mvnHome}/bin/mvn package"
    }


}