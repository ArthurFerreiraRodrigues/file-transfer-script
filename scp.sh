#!bin/bash

USERNAME_REMOTE="" # Nome do usuario que deseja acessar via SSH
IP_REMOTE="" # IP do remoto (IPV4 se for o local)
IP_LOCAL=""
PATH_REMOTE="" #.../exemplo/ ou exemplo/ -> Path do diretório deve terminar em /
PATH_LOCAL="" # Path completo do diretorio ou arquivo

# Copying a file
scp $PATH_LOCAL "${USERNAME_REMOTE}@${IP_REMOTE}:${PATH_REMOTE}"

# Copying an entire directory
#scp -r $PATH_LOCAL "${USERNAME_REMOTE}@${IP_REMOTE}:${PATH_REMOTE}"


