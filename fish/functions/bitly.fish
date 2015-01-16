function bitly
    # Set auth params
    set api_key "R_14b4d42ad6a04c8f9811d5237e822391"
    set login "malcolmkindermans"
    set long_url $argv[1]

    echo "long url: $long_url"

    # Create temp file to store curl result
    set tmpfile (mktemp -t bitly.XXXXX)

    # Set the long url
    set long_url $argv[1]

    # Perform the curl to bitly
    curl \
        --get \
        --include "https://ismaelc-bitly.p.mashape.com/v3/shorten?apikey=$api_key&login=$login&longUrl=$long_url" \
        -H "X-Mashape-Key: GpxbctBCpqmshfFeehYND2bRnxjCp1desGYjsnmeHzQjTUktw7" \
        -H "Accept: application/json" | grep 'status_code' >> $tmpfile

    set bitly_result (cat $tmpfile)

    # Delete temporary file
    rm -f $tmpfile

    echo $bilty_result
end
