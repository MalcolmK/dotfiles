function start-werksite
	#
	# Open Sequel Pro connections
	#

	# Open Connection with Werksite Dev database as super user.
	open -g $werksite_sql_pro

	#
	# Start Sublime Text with right project.
	#
	open -a /Applications/Sublime\ Text.app/ $werksite_subl_project

	#
	# Open Google Chrome with development environment and live website.
	#
	open -a "$HOME/Applications/Google Chrome.app/" "http://www.werksite.nl/"
	open -a "$HOME/Applications/Google Chrome.app/" "http://malcolm.dev.werksite.nl/"

	#
	# Open the mail.
	#
	open -a Mail

	#
	# Update local svn repository.
	#
	pushd
	werksite
	sup
	popd
end
