pipeline {
    options {
        buildDiscarder(logRotator(numToKeepStr: '5', artifactNumToKeepStr: '5'))
    }
    agent any

    tools {
        maven 'maven_3.9.4'
    }

    stages {
        stage('Code Compilation') {
            steps {
                echo 'Code Compilation Is In Progress!'
                sh 'mvn clean compile'
                echo 'Code Compilation Is Complited Successfully'
            }
        }
        stage('Code QA Execution') {
            steps {
                echo 'Junit Test Case Check In Progress'
                sh 'mvn clean test'
                echo 'Junit Test Case Check Completed'
            }
        }
        stage('Code Package') {
            steps {
                echo 'Creating War Artifact'
                sh 'mvn clean package '
                echo 'Creating War Artifact Done'
            }
        }
    }
}