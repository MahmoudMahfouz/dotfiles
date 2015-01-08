if [ "$(uname)" == "Darwin" ]; then
    prefix="$HOME/Library/Application Support/Sublime Text 3"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	prefix="$HOME/.config/sublime-text-3"
fi

package_mgr="$prefix/Installed Packages"

mkdir -p "$package_mgr"
cp Package\ Control.sublime-package "$package_mgr/Package Control.sublime-package"

settings="$prefix/Packages/User"
mkdir -p "$settings"
cp Package\ Control.sublime-settings "$settings/Package Control.sublime-settings"