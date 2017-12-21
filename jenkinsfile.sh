pipeline
{
	agent any
    stages
    {
	
        stage('git clone')
        {
            steps
            {
                git 'https://github.com/jitpack/maven-simple.git'
            }
        }
		
        stage('Maven build')
        {
            steps
            {
                sh 'mvn clean install'
            }
           
        }
    }
}