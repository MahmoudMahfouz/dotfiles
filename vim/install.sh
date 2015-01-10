source $global_loc
source .exports

if [[ -e "$vim_path/bundle" ]]; then
	rm -rf $vim_path/bundle
fi
mkdir -p $vim_path/bundle

git clone https://github.com/gmarik/Vundle.vim.git $vim_path/bundle/Vundle.vim

sed "s^DOTFILESPATH^$dotfiles_path^g;s^VIMPATH^$vim_path^g;" vimrc > ./.vimrc

# install solarized theme
cd $vim_path/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
# mv vim-colors-solarized/ ~$vim_path/bundle/
