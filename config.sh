#read user and email for git config
read -p 'Nome (Github): ' NAME
read -p 'Email (Github): ' EMAIL

#update packages
sudo apt update
sudo apt upgrade -y

#install general dependencies
sudo apt install git build-essential xclip neovim wget curl -y

#config git
git config --global --replace-all  user.name "$NAME"
git config --global --replace-all  user.email "$EMAIL"

#install tools
sh install_asdf.sh
sh install_code.sh
sh install_python.sh
sh install_node.sh

#set copy paste aliases
OUTPUT=$(cat ~/.bashrc | grep 'alias c="xclip"')
if test -z "$OUTPUT"; then 
	echo 'alias c="xclip"' >> ~/.bashrc
	alias c=xclip
fi

OUTPUT=$(cat ~/.bashrc | grep 'alias v="xclip -o"')
if test -z "$OUTPUT"; then 
	echo 'alias v="xclip -o"' >> ~/.bashrc
	alias v=xclip -o
fi




