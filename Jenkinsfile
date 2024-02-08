pipeline {
    agent any

    environment {
        QA_SERVER = 'https://qa.application.com/'
        CT_SERVER = 'http://ct.application.com/'
    }
    
    stages {
        stage('Initialize') {
            steps {
                sh 'echo "PATH= ${PATH}"'
            }
        }
        
        stage('Install dependencies') {
            steps {
                sh '/home/drashti/Documents/Android_Automation/robot-files/Mobile_Automation/Mobile_app_Automation/Requirements.txt'
                
        }

        
        stage('Run Robot Tests') {
            steps {
                script {
                    sh 'python3 -m robot.run /home/drashti/Documents/Android_Automation/robot-files/Mobile_Automation/Mobile_app_Automation/Robot/automation.robot'
                }
            }
        }
    }
    
    
    post {
        always {
            script {
                step([
                    $class              : 'RobotPublisher',
                    outputPath          : '/var/lib/jenkins/workspace/Automation_pipeline/',
                    outputFileName      : '**/output.xml',
                    reportFileName      : '**/report.html',
                    logFileName         : '**/log.html',
                    disableArchiveOutput: false,
                    passThreshold       : 50,
                    unstableThreshold   : 40,
                    otherFiles          : "**/*.png,**/*.jpg",
                ])
            }
        }
    }
}