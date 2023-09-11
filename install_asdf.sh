if command -v asdf >/dev/null; then
  echo "asdf ja esta instalado"
  exit 1
fi

#install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0

echo '. "$HOME/.asdf/asdf.sh"' >> ~/.bashrc
echo '. "$HOME/.asdf/completions/asdf.bash"' >> ~/.bashrc

. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"