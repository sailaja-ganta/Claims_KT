node
{
  stage("Git clone")
  {
    git branch : "Claims-UI" , url : "https://github.com/DurgaRaoGopu/Cliams_KT.git"
  }
  stage ("Docker Build")
  {
    sh "sudo systemctl restart docker"
    sh "sudo docker build -t claims-ui-image ."
    sh "sudo docker images"
  }
  stage("Docker run")
  {
    sh "sudo docker run -d -p 80:80 --name claims-ui-container claims-ui-image"
    sh "sudo docker ps"
  }
}
