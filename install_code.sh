#install vscode
if command code -v > /dev/null; then
   echo "visual studio code ja esta instalado"
   exit 1
fi

FILE=/tmp/code.deb
if (! test -f $FILE) then
   sudo curl -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -o $FILE
fi
sudo apt install $FILE




