if [ -z "$1" ]
then
        echo "Usage: ./PullAllJs.sh <DOMAIN.COM/IP>"
        exit 1
fi

# Using WayBackURLs to grab JS files and save them to output/ directory.
echo "Looking for .js files..."
waybackurls $1 | grep "\.js" | uniq | sort >> /tmp/$1-waybackurls.txt

# Using hakcheckurl to test the responses of the links we grabbed
echo "Testing URLs..."
mkdir output/$1
cat /tmp/$1-waybackurls.txt | hakcheckurl | grep 200 >> output/$1/AllPulledJS.txt


echo "[+] Done."
echo "Please find your target's JS files at the output/ directory"
