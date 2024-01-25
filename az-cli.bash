# create a azur conatier registry use CLI or UI 

az acr create --resource-group <your-resource-group> --name <your-acr-name> --sku Basic


# clone dockerfile 

git clone https://github.com/Mouhamed-dridi/thebatman.git 


# create docker file name MyDockerfile 

nano MyDockerfile

# build image use acr azur commande 

 az acr build --image apache --registry azurhub --file MyDockerfile .


# test by creatineg conatier use conatier app


az container exec --resource-group docker-az-rg --name apache --exec-command "pwd"






