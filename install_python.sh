if ! command asdf > /dev/null; then
    sudo sh install_asdf.sh
fi

OUTPUT=$(asdf plugin list | grep python)

# add plugin if not exist
if test -z "$OUTPUT"; then
    asdf add plugin python
fi

# install dependencies
sudo apt update
sudo apt install build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev -y

#install and set global version
asdf install python latest
asdf global python latest