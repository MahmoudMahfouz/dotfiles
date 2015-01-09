source $global_loc
echo "What is your git name?"
read user_name

echo "What is your git email?"
read email

echo "What is your favorite git text editor?"
read git_editor
sed "s/GITUSERNAME/$user_name/g;s/GITEDITOR/$git_editor/g;s/GITEMAIL/$email/g;s,DOTFILESPATH,$dotfiles_path,g" .gitconfig-template > ~/.gitconfig

cp .gitignore ~/.gitignore