# FOR ANSIBLE
## DOCKER VERSION GESTION
Il est possible de spécifier la version des packages docker à installer.
Exemple pour REDHAT : 
```
docker_packages:
  - docker-ce-3:26.1.3-1.el8
  - docker-ce-cli-1:26.1.3-1.el8
  - docker-ce-rootless-extras-26.1.3-1.el8
  - containerd.io
```
Actuellement le latest est prioriser.
