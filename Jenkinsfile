pipeline{
    agent any
    stages{
        stage("Checkout"){
            steps{
                git url:"https://github.com/ShaikAtafHussainDevOps/two-tier-flask-app.git", branch:"master"
            }
        }
        stage("building the image"){
            steps{
                sh 'docker build -t 2tierflask:latest .'
            }
        }
        stage("Push to docker hub"){
            steps{ 
                echo "Pushing the image to docker hub"
                withCredentials([usernamePassword(credentialsId:"dockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                sh "docker tag 2tierflask:latest ${env.dockerHubUser}/2tierflask:latest"
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker push ${env.dockerHubUser}/2tierflask:latest"
                }
            }
        }
        stage("deploy"){
            steps{
                sh 'docker-compose up -d'
            }
        }
    }
}