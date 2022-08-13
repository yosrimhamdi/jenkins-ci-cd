node {
   stage('Preparation') {
     checkout scm
   }
   stage('test') {
     nodejs(nodeJSInstallationName: 'nodejs') {
       sh 'npm install'
       sh 'npm test'
     }
   }
   stage('docker build/push') {
     docker.withRegistry('https://index.docker.io/v2/', 'f4f99d61-e797-4425-b097-cc103942709b	') {
       docker.build("yosrimhamdi/first-demo:latest", '.').push()
     }
   }
}
