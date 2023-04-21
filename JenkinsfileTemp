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
              sh 'docker build -t officialmanishkr98/maven:latest .'
          }
      }
      stage('Deploying the docker image'){
          steps
          {
              sh 'docker run -p 8070:8070 officialmanishkr98/maven'
          }
      }
      stage ( 'cleaning docker images'){
          steps
          {
              sh 'docker rmi -f officialmanishkr98/maven'
          }
      } 
      stage('cleaning the workplace in the end'){
          steps
          {
              sh 'rm -rf *'
          }
      }
      
    }
}
