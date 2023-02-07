node 
{
  stage("Git clone")
  {
    git branch : "Customer-API", url : "https://github.com/DurgaRaoGopu/Cliams_KT.git"
  }
  stage ("Maven clean&Install")
  {
    sh "mvn clean"
    sh "mvn install"
  }
  stage ("Docker Build")
  {
    sh "docker build -t customer-api-image ."
    sh "docker images"
  }
  stage ("Docker run ")
  {
    sh "docker run -d -p 9002:9002 --name customer-api-container customer-api-image"
    sh "docker ps"
  }
}
