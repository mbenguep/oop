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
          sh "/usr/bin/mvn clean org.sonarsource.scanner.maven:sonar-maven-plugin:3.9.0.2155:sonar"
        }
    }


}