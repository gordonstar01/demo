podTemplate(
    label: 'mypod',
    volumes: [
        emptyDirVolume(mountPath: '/etc/gitrepo', memory: false),
        hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock')
    ],
    containers:
    [
        containerTemplate(name: 'git', image: 'alpine/git', ttyEnabled: true, command: 'cat')
    ]
)

node {
	stage('========== Clone repository ==========') {
		checkout scm
	} 
	stage('========== Build image ==========') { 
	} 
	stage('========== Push image ==========') {

	}
}