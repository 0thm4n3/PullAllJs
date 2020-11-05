if [ -z "$1" ]
then
        echo "Usage: ./PullAllJs.sh <DONMAIN.COM/IP>"
        exit 1
fi

# Using WayBackURLs to grab JS files and save them to output/ directory.
echo "Looking for .js files..."
waybackurls $1 | grep "\.js" | uniq | sort >> /tmp/$1-waybackurls.txt

# Using hakcheckurl to test the responses of the links we grabbed
echo "Testing URLs..."
cat /tmp/$1-waybackurls.txt | hakcheckurl >> output/$1-PulledJS.txt


echo "[+] Done."
echo "Please find your target's JS files at the output/ directory"
