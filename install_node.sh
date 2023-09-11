if ! command asdf > /dev/null; then
    sudo sh install_asdf.sh
fi

OUTPUT=$(asdf plugin list | grep nodejs)

# add plugin if not exist
if test -z "$OUTPUT"; then
    asdf add plugin nodejs
fi

#install and set global version
asdf install nodejs latest
asdf global nodejs latest
