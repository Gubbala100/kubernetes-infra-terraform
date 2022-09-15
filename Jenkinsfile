pipeline {
    agent any
    stages {
        stage('Initialize Infrastructure') {
            steps {
                sh "terraform init"
            }
        }
        stage('Plan Infrastructure') {
            steps {
                sh "terraform plan"
            }
        }
        stage('Create Infrastructure') {
            steps {
                sh "terraform apply -auto-approve"
            }
        }
        stage('Get Master Public IP') {
            steps {
                sh '''
                    terraform output master_public_ip | sed -n '2p' | sed -e 's/^[ \t]*//' -e 's/,//'  -e 's/^"//' -e 's/"//' >> ip.txt
                   '''
            }
        }
    }    
}

// pipeline {
//     agent any
//     stages {
//         stage('Destroy Infrastructure') {
//             steps {
//                 sh "terraform destroy -auto-approve"
//             }
//         }
//         stage('Delete k8sinfra') {
//             steps {
//                 cleanWs()
//             }
//         }
//     }
// }