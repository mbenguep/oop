node{
    stage('Checkout'){


        git branch: 'master', url: 'https://github.com/mbenguep/oop.git'
    }
    stage('compile-package'){
        // getting maven home path

        sh "/usr/bin/mvn package"
    }
    stage('SonarQube updates') {
        echo 'Code Quality'
        withSonarQubeEnv('sonar-2') { 
          sh "/usr/bin/mvn versions:display-plugin-updates"
        }
    }
    stage('SonarQube Analysis') {
        echo 'Code Quality'
        withSonarQubeEnv('sonar-2') { 
          sh "/usr/bin/mvn org.sonarsource.scanner.maven:sonar-maven-plugin:2.3:sonar"
        }
    }


}