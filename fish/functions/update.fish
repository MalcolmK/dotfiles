function update
    sudo -v

    echo 'Clearing trash.'
        emptytrash
    echo 'Trash cleared.'

    sudo -v

    echo 'Updating brew.'
        brew update
    echo 'Brew updated.'

    sudo -v

    echo 'Upgrading brew packages.'
        brew upgrade
    echo 'Brew packages upgraded.'

    sudo -v

    echo 'Running brew cleanup.'
        brew cleanup
    echo 'Brew cleaned up.'

    echo "Clean Brew Cask cached downloads and tracker symlinks."
        brew cask cleanup
    echo "Brew Cask cleaned up."

    echo 'Updating fish completions.'
        fish_update_completions
    echo 'Fish completions updated.'

    update-dotfiles

    echo 'Updating composer.'
        which composer; and composer self-update
    echo 'Composer updated.'


    echo 'Update done.'
end
