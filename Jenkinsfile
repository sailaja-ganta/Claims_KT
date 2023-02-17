node
{
  stage("Git Clone")
  {
    git branch : "Config-Server" , url : "https://github.com/DurgaRaoGopu/Claims_KT.git"
  }
  stage("Maven Clean&Install")
  {
    sh "mvn clean"
    sh "mvn install"
  }
  stage ("containerization")
  {

    sh "docker build -t configserver-image ."
    sh "docker run -d -p 8888:8888 --name config-server-container configserver-image"
  }
}
