function slogr
	set log_file ~/.tmp/log-svn.txt
    svn log --verbose -r $argv > $log_file
    subl $log_file
end
