# How Create a Web app in azur using the Container App

## introduction
This repository contains the source code and instructions for creating a web app in Azure using the Container App service. The web app is built using Docker, and the container image is stored in an Azure Container Registry (ACR). Follow the steps below to set up and deploy the web app.

### Prerequisites
Before you begin, make sure you have the following prerequisites:

Azure account
Azure CLI installed (Install Azure CLI)
### Steps
1. Create Azure Container Registry (ACR)

```bash
az acr create --resource-group <your-resource-group> --name <your-acr-name> --sku Basic
```


3. Clone the Repository

```bash
git clone https://github.com/Mouhamed-dridi/thebatman.git
```


4. Create Dockerfile
Navigate to the project directory and create a Dockerfile (e.g., MyDockerfile) using your preferred text editor (e.g., nano).

```bash
cd thebatman
nano MyDockerfile
```

4. Build Docker Image and Push to ACR
```bash 
az acr build --image apache --registry <your-acr-name> --file MyDockerfile .
```

5. Deploy Container to Azure Container Instance
```bash
az container create --resource-group <your-resource-group> --name apache --image <your-acr-name>/apache --registry-login-server <your-acr-name> --dns-name-label <your-dns-name-label> --ports 80
```


6. Test Container Execution
```bash
az container exec --resource-group <your-resource-group> --name apache --exec-command "pwd"
```

### Conclusion
Congratulations! You have successfully created a web app in Azure using the Container App service. For more details and customization options, refer to the official Azure Container Instances documentation.






