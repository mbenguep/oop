FROM tomcat:10
# Take the war and copy to webapps of tomcat
COPY target/*.jar /usr/local/tomcat/webapps/dockeransible.jar