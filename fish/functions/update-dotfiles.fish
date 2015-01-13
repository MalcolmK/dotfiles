function update-dotfiles
	echo 'Updating dotfiles.'
        pushd
        dotfiles
        gac "Update settings"
        gsync
        popd
    echo 'Dotfiles updated.'
end
