function update
    sudo -v

    echo ''
    echo 'Clearing trash.'
        emptytrash
    echo 'Trash cleared.'

    sudo -v

    echo ''
    echo 'Updating brew.'
        brew update
    echo 'Brew updated.'

    sudo -v

    echo ''
    echo 'Upgrading brew packages.'
        brew upgrade
    echo 'Brew packages upgraded.'

    sudo -v

    echo ''
    echo 'Running brew cleanup.'
        brew cleanup
    echo 'Brew cleaned up.'

    echo ''
    echo 'Remove broken symlinks.'
        brew prune
    echo 'Broken symlinks removed.'

    echo ''
    echo "Clean Brew Cask cached downloads and tracker symlinks."
        brew cask cleanup
    echo "Brew Cask cleaned up."

    echo ''
    echo 'Updating fish completions.'
        fish_update_completions
    echo 'Fish completions updated.'

    echo ''
    update-dotfiles

    echo ''
    echo 'Updating composer.'
        which composer; and composer self-update
    echo 'Composer updated.'


    echo ''
    echo ''
    echo 'Update done.'
end
