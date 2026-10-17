
pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Ruslan'
        STUDENT_SURNAME = 'Strizhak'
        STUDENT_GROUP = 'IT2-2314'
        STUDENT_ID = '37187'
        IMAGE_NAME = 'strizhak-ruslan-devops'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh '''
                    echo "Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                    echo "Group: ${STUDENT_GROUP}"
                    echo "Student ID: ${STUDENT_ID}"

                    test -f Strizhak_Ruslan_info.txt
                    test -f config/app.conf
                    test -f scripts/Strizhak_Ruslan_system.sh

                    echo "Build checks completed successfully."
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                    bash -n scripts/Strizhak_Ruslan_system.sh
                    test -f docker-compose.yml
                    echo "All tests passed."
                '''
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t strizhak-ruslan-devops .'
            }
        }

        stage('Docker Run') {
            steps {
                sh '''
                    docker run --rm \
                        -e STUDENT_NAME="$STUDENT_NAME" \
                        -e STUDENT_SURNAME="$STUDENT_SURNAME" \
                        -e STUDENT_GROUP="$STUDENT_GROUP" \
                        -e STUDENT_ID="$STUDENT_ID" \
                        "$IMAGE_NAME"
                '''
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the Console Output.'
        }
    }
}

