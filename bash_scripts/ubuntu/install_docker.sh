# These are the steps highlighted in the documentation
# https://docs.docker.com/engine/installation/linux/ubuntu/#install-using-the-repository
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

wget https://download.docker.com/linux/ubuntu/gpg
sudo apt-key add gpg

sudo apt-get install -y apt-transport-https software-properties-common ca-certificates curl

echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable" | sudo tee /etc/apt/sources.list.d/docker.list

# Update the repo
sudo apt-get update
sudo apt-get install -y docker-ce

# Give Vagrant user access to the docker socket.
sudo usermod -G docker vagrant
