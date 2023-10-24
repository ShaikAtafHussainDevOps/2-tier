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
    }
}