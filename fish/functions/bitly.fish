function bitly
    # Get long url
    if test $argv[1]
        set long_url $argv[1]
    else
        set long_url (pbpaste)
    end

    # Create temp file to store curl result
    set tmpfile (mktemp -t bitly.XXXXX)

    # Perform the curl to bitly
    curl \
        --get \
        --include "https://ismaelc-bitly.p.mashape.com/v3/shorten?apikey=$bitly_api_key&login=$bitly_login&longUrl=$long_url" \
        -H "X-Mashape-Key: GpxbctBCpqmshfFeehYND2bRnxjCp1desGYjsnmeHzQjTUktw7" \
        -H "Accept: application/json" | grep 'url' | jq '.data.url' | sed 's/\"//g' | sed ':a;N;$!ba;s/\n/,/g' >> $tmpfile

    set bitly_result (cat $tmpfile)

    # Delete temporary file
    rm -f $tmpfile

    # Set short url to clipboard
    echo $bitly_result | pbcopy
    echo $bitly_result
end
