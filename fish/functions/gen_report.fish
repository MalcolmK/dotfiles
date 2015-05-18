function gen_report
    if test $argv[1]
        set times "$argv[1]"
    else
        set times 1
    end

    # Save the current directory
    pushd

    # Goto the correct directory
	afstuderen
	cd docs/scriptie/

    # Compile the document
    for time in (seq $times)
	   documark compile
    end

    # Open the document
    set filename (documark config | jq '.filename' -r)
    open $filename

    # Return to the old directory
    popd
end
