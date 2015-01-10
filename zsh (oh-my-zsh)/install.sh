source $global_loc
source .exports
echo "zsh = "$ZSH
if [[ -e $ZSH ]]; then
	rm -rf $ZSH
fi

curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
cd $ZSH/themes
git clone https://github.com/KuoE0/oh-my-zsh-solarized-powerline-theme.git solarized-powerline
cd solarized-powerline
ln -s $PWD/solarized-powerline.zsh-theme $ZSH/themes
