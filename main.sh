ignored_files="(.DS_Store|.gitignore)"
ignored_dir="(git|tmp)"
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
				# echo 'copying '$file
				# echo "to tmp/"$filename
				cat $file >> 'tmp/'$filename
			fi
			
		done
	done
}

if [[ -e 'tmp/' ]]; then
	rm -rf tmp
fi
mkdir tmp

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

IFS=$SAVEIFS