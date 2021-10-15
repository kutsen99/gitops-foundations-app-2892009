# GitOps Foundations

## Installing
Install JAVA and maven
Install az CLI
Install az aks CLI
	- Az aks install-cli
	- Put kubectl into env variable
Install docker
Install Helm (version < 3.7)

## Execute
Any code change in main branch would trigger the Action `Build and Deploy`, which build the code and deploy a new docker image into the docker hub. The image would be tagged as the same version to the one specify in `pom.xml`.
To change the system state, push a new commit against the `config/arc/deployment.yaml`, and the change would be sync by Azure ARC automatically.
