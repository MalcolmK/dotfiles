# Set path
set -x PATH $HOME/.bin /bin /sbin /usr/local/bin /usr/local/sbin /usr/bin $PATH
set -x PATH (brew --prefix coreutils)/libexec/gnubin $PATH
set -x PATH /Users/Malcolm/pear/bin $PATH

# Init boot2docker environment variables
boot2docker shellinit | while read line; eval $line; end

# Bitly credentials
set bitly_api_key "R_14b4d42ad6a04c8f9811d5237e822391"
set bitly_login "malcolmkindermans"
