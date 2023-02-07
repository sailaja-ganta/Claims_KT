node
{
  stage("Git clone")
  {
    gti branch : "Claims-UI" , url : "https://github.com/DurgaRaoGopu/Cliams_KT.git"
  }
  stage ("Docker Build")
  {
    sh "docker build -t claims-ui-image ."
    sh "docker images"
  }
  stage("Docker run")
  {
    sh "docker run -d -p 80:80 --name claims-ui-container claims-ui-image"
    sh "docker ps"
  }
}
