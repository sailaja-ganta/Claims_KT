node
{
 stage("Git clone")
  {
   git branch : "Claims-API", url : "https://github.com/DurgaRaoGopu/Cliams_KT.git" 
  }
  stage("Maven Clean&Install")
  {
    sh "mvn clean"
    sh "mvn install"
  }
  stage("Docker build")
  {
    sh "docker build -t claims-image ."
    sh "dokcer images"
  }
  stage("Docker run")
  {
    sh "docker run -d -p 9001:9001 --name claims-container claims-image"
    sh "docker ps"
  }
}
