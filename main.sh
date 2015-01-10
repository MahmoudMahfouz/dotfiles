source "globals"
current=$(pwd)
export global_loc=$current/globals

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
arr=()
files=""
function group_files {
	uFiles=$(echo $files | tr '†' '\n' | sort -u)
	filenames=( $uFiles )
	for filename in "${filenames[@]}"
	do
		for file in "${arr[@]}"
		do
			filename2=${file##*/}
			if [[ $filename == $filename2 ]]; then
				cat $file >> 'dst/'$filename
			fi
		done
	done
}

if [[ -e 'dst/' ]]; then
	rm -rf dst
fi
mkdir dst

for file in */.*
do
	if [[ -f $file ]] && [[ ! $file =~ $ignored_files ]] && [[ ! $file =~ $ignored_dir ]]; then
  		# echo $file
  		arr+=($file)
  		files+=${file##*/}
  		files+="†"
  	fi
done
group_files $arr
for file in dst/.*
do
  	filename=${file##*/}
	if [[ $filename == ".zshrc" ]]; then
		echo "source $dotfiles_path/.globals" | cat - $file > /tmp/out && mv /tmp/out $file
	fi
done

for file in */install.sh
do
	dir=$(dirname $file)
	while true; do
	    read -p "Do you wish to install $dir? " yn
	    case $yn in
	        [Yy]* ) current_dir=$(pwd)/$dir; cd $current_dir; sh install.sh; cd ..; break;;
	        [Nn]* ) break;;
	        * ) echo "Please answer yes or no.";;
	    esac
	done
done

# symlink gitignore, gitconfig, osx, zshrc, editorconfig, tmux.conf

ln -fs $current/dst/.zshrc ~/.zshrc
ln -fs $current/dst/.vimrc ~/.vimrc
ln -fs $current/general/.tmux.conf ~/.tmux.conf
ln -fs $current/general/.osx ~/.osx
ln -fs $current/general/.editorconfig ~/.editorconfig
# ln -fs $current/git/.gitignore ~/.gitignore   # will be copied automatically when you run install.sh
# ln -fs $current/git/.gitconfig ~/.gitconfig
ln -fs $current/globals $dotfiles_path/.globals
ln -fs $current/dst/.* $dotfiles_path/

read -p "Do you wish to install Vim plugins? " yn
    case $yn in
        [Yy]* ) vim +PluginInstall +qall; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
IFS=$SAVEIFS
