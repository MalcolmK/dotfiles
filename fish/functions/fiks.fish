function fiks
	# Check if file location is passed as argument.
	if test $argv[1]
		set file_path "$argv[1]"
	else
		set file_path (pbpaste)
	end

	echo "Fixing file according to PSR-2."
	php-cs-fixer fix "$file_path" --level="psr2"
	echo "File fixed."
end
