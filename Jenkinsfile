node 
{
  stage ("Git Clone")
  {
    git branch : "eureka-server" , url : "https://github.com/DurgaRaoGopu/Claims_KT.git"
   }
  stage ("Maven Clean&Install")
  {
    sh "mvn clean"
    sh "mvn install"
  }
  stage ("containerization")
  {
    sh "docker rm -f eureka-server-container||true"
    sh "docker rmi eureka-server-image||true"
    sh "docker build -t eureka-server-image ."
    sh "docker run -d -p 8761:8761 --name eureka-server-container eureka-server-image"
  }
}
