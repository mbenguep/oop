node{
    stage('Checkout'){


        git branch: 'master', url: 'https://github.com/mbenguep/oop.git'
    }
    stage('compile-package'){
        // getting maven home path

        sh "/usr/bin/mvn package"
    }
    stage('SonarQube Analysis') {
        echo 'Code Quality'
        withSonarQubeEnv(installationName: 'sonar-1') { 
          sh "/usr/bin/mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.7.0.1746:sonar"
        }
    }


}