pipeline
{
    agent any
    environment
    {
        DOCKERHUB_CRED = credentials('dockerCred')
    }
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
              sh 'docker build -t officialmanishkr98/maven:latest .'
          }
      }
      
      stage('login in to dockerhub')
      {
          steps
          {
              sh 'echo $DOCKERHUB_CRED_PSW | docker login -u $DOCKERHUB_CRED_USR --password-stdin'
          }
      }
        
      stage('pushing image to dockerhub') 
      {
          steps
          {
              sh 'docker push officialmanishkr98/maven:latest'
          }
      }
    }
}
