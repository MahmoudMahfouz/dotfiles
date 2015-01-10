source $global_loc
if [ ! -d $pyenv_path ]
	then
	git clone git://github.com/yyuu/pyenv.git $pyenv_path
fi
source .exports
source .path
source .zshrc
pyenv install 2.7.8
pyenv rehash
pyenv local 2.7.8
pyenv global 2.7.8
