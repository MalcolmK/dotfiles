function update-dotfiles
	echo 'Updating dotfiles.'
        pushd
        dotfiles
        ./script/update.sh
        gac "Update settings"
        gsync
        popd
    echo 'Dotfiles updated.'
end
