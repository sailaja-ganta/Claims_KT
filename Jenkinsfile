node 
{
  stage ("Git Clone")
  {
    git branch : "eureka-server" , url : "https://github.com/DurgaRaoGopu/Claims_KT.git"
   }
  stage ("containarization")
  {
    sh "docker rm -f eureka-server-container"
    sh "docker rmi eureka-server-image"
    sh "docker build -t eureka-server-image ."
    sh "docker run -d -p 8761:8761 --name eureka-server-container eureka-server-image"
  }
}
