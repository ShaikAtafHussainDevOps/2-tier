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
                docker.build('2tierflask:latest', '.')
            }
        }
    }
}