if [ -z "$1" ]
then
        echo "Usage: ./PullAllJs.sh <DONMAIN.COM/IP>"
        exit 1
fi

waybackurls $1 | grep "\.js" | uniq | sort >> PulledJS-$1.txt
