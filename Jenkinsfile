pipeline
{
    agent any
     
    stages
    {
     
      stage ('cloning from git')
      {
          steps
          {
              checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/manishkumar201/maven.git']])
          }
         
      }
      stage('building jar file')
      {
          steps
          {
              sh 'mvn clean install'
          }
      }
      stage( 'building docker image with dockerfile')
      {
          steps
          {
              dockerImage = docker.build("officialmanishkr98/maven:latest")
          }
      }
        
      stage('pushing image to dockerhub') 
      {
          steps
          {
              withDockerRegistry([ credentialsId: "dockerCred", url: "" ]) 
              {
                  dockerImage.push()
              }
          }
      }
    }
}
