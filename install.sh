echo "Installing..."
# Downloading tools using go.
go get github.com/tomnomnom/waybackurls
go get github.com/hakluke/hakcheckurl

# Copying the binaries to the dir `/usr/bin/`
sudo cp ~/go/bin/waybackurls /usr/bin/
sudo cp ~/go/bin/hackcheckurl /usr/bin/
echo "Done."
