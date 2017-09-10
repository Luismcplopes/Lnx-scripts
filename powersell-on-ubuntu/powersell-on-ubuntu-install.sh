# Ubuntu 14.04 repository
apt-get update && apt-get install -y --no-install-recommends apt-utils  ca-certificates curl apt-transport-https && rm -rf /var/lib/apt/lists/*

# Import the public repository GPG keys for Microsoft
curl https://packages.microsoft.com/keys/microsoft.asc |sudo apt-key add -
	
# Register the Microsoft Ubuntu 14.04 repository
curl https://packages.microsoft.com/config/ubuntu/14.04/prod.list |sudo tee /etc/apt/sources.list.d/microsoft.list

# Install powershell from Microsoft Repo
sudo apt-get update && apt-get install -y --no-install-recommends powershell

#######################################################

# Ubuntu 16.04 repository
apt-get update && apt-get install -y --no-install-recommends apt-utils  ca-certificates curl apt-transport-https && rm -rf /var/lib/apt/lists/*

# Import the public repository GPG keys for Microsoft
curl https://packages.microsoft.com/keys/microsoft.asc |sudo apt-key add -
	
# Register the Microsoft Ubuntu 16.04 repository
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/microsoft.list

# Install powershell from Microsoft Repo
sudo apt-get update && apt-get install -y --no-install-recommends powershell
