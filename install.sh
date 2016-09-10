sudo add-apt-repository -y ppa:ethereum/ethereum
sudo add-apt-repository -y ppa:ethereum/ethereum-dev
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get update
sudo apt-get install -y build-essential libgmp-dev curl git atom software-properties-common ethereum
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get upgrade -y
sudo apt-get autoremove --purge -y
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.7/install.sh | bash
source ~/.bashrc
nvm install 5
sudo npm install -g grunt-cli embark-framework ethersim
