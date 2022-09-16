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
        withSonarQubeEnv(installationName: 'sonar-2') { 
          sh "/usr/bin/mvn versions:display-plugin-updates"
        }
    }
    stage('SonarQube Analysis') {
        echo 'Code Quality'
        withSonarQubeEnv(installationName: 'sonar-2') { 
          sh "/usr/bin/mvn sonar:sonar -Dsonar.host.url=http://192.168.1.83:9000 -Dsonar.login=a4498d4b7bad5410e18032a077838e986c7492f7"
        }
    }


}