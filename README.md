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
>[!IMPORTANT]
> Les paquets de docker peuvent ne pas correspondre, par exemple sur ARCH en 2024 il n'existe pas de pacman docker-ce mais plutot docker.
