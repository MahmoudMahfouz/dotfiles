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
				if [[ $filename == ".zshrc" ]]; then
					echo "source $dotfiles_path/.globals" > 'dst/'$filename
				fi
				cat $file >> 'dst/'$filename
				echo "\n\n" >> 'dst/'$filename
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

for file in */install.sh
do
	current_dir=$(pwd)/$(dirname $file)
	cd $current_dir
	sh install.sh
	cd ..
done

# symlink gitignore, gitconfig, osx, zshrc, editorconfig, tmux.conf

ln -s $current/dst/.zshrc ~/.zshrc
ln -s $current/general/.tmux.conf ~/tmux.conf
ln -s $current/general/.osx ~/.osx
ln -s $current/general/.editorconfig ~/.editorconfig
# ln -s $current/git/.gitignore ~/.gitignore   # will be copied automatically when you run install.sh
# ln -s $current/git/.gitconfig ~/.gitconfig
ln -s $current/globals $dotfiles_path/.globals

IFS=$SAVEIFS