node
{
  stage("Git clone")
  {
    git branch : "Facility-API" , url : "https://github.com/DurgaRaoGopu/Cliams_KT.git"
  }
  stage ("Maven clean&install")
  {
    sh "mvn clean"
    sh "mvn install"
  }
  stage ("Docker Build")
  {
    sh "docker build -t facility-api-image ."
    sh "docker images" 
  }
  stage("Docker run")
  {
    sh "docker run -d -p 9003:9003 --name facility-api-container facility-api-image"
    sh "docker ps"
  }
}
