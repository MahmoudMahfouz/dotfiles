temp_dir="$HOME/.pyenv"
if [ ! -d $temp_dir ]
	then
	git clone git://github.com/yyuu/pyenv.git $temp_dir
fi
source .exports
# bash .zshrc
pyenv install 2.7.8
pyenv rehash