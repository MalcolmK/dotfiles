function gen_report
    pushd
	afstuderen
	cd docs/scriptie/
	documark compile
    set filename (documark config | jq '.filename' -r)
    open $filename
    popd
end
