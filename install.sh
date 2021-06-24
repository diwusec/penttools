#!/bin/bash

echo "WITH GREAT POWER COMES WITH GREAT RESPONSIBILITY!"


sudo apt-get -y update
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean


sudo apt-get install -y npm
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libpcap-dev
sudo apt-get install -y htop
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev libgmp-dev zlib1g-dev
sudo apt-get install -y libssl-dev libffi-dev python-dev
sudo apt-get install -y libldns-dev
sudo apt-get install -y python-dnspython
sudo apt-get install -y python-setuptools
sudo apt-get install -y build-essential
sudo apt-get install -y python3-pip
sudo apt-get install -y gcc
sudo apt-get install -y torbrowser-launcher
sudo apt-get install -y alacarte
sudo apt-get install -y geany
sudo apt-get install -y massdns
sudo apt-get install -y masscan
sudo apt-get install -y etherape
sudo apt-get install -y tree
sudo apt-get install -y gospider
sudo apt-get install -y scrapy
sudo apt-get install -y sublist3r
sudo apt-get install -y altdns
sudo apt-get install -y knockpy
sudo apt-get install -y arjun
sudo apt-get install -y dirsearch
sudo gem install aquatone

curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash

sudo mv feroxbuster /usr/local/bin

#create a tools folder in ~/
mkdir ~/tools
cd ~/tools/



echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "done"

echo "installing virtual-host-discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd ~/tools/
echo "done"

echo "installing Linkfinder"
git clone https://github.com/GerbenJavado/LinkFinder.git
cd ~/tools/
echo "done"

echo "installing scripthunter"
git clone https://github.com/robre/scripthunter.git
cd ~/tools/
echo "done"

echo "installing Eyewitness"
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd ~/tools/
echo "done"

echo "installing paramspider"
git clone https://github.com/devanshbatham/ParamSpider.git
cd ~/tools/
echo "done"

echo "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git
cd ~/tools/
echo "done"

echo "installing gitgraber"
git clone https://github.com/hisxo/gitGraber.git
cd ~/tools/
echo "done"

echo "looks like you didnt install and configure go"
sudo apt install golang

export GOPATH=/home/$USER/go

export PATH=${PATH}:$GOROOT/bin:/home/$USER/go/bin

source ~/.zshrc


echo "installing assetfinder"
go get -u github.com/tomnomnom/assetfinder
echo "done"

echo "installing gron"
go get -u github.com/tomnomnom/gron
echo "done"

echo "installing meg"
go get -u github.com/tomnomnom/meg
echo "done"

echo "installing hakrawler"
go get github.com/hakluke/hakrawler
echo "done"

echo "installing fff"
go get -u github.com/tomnomnom/fff
echo "done"

echo "installing httprobe"
go get -u github.com/tomnomnom/httprobe 
echo "done"

echo "installing unfurl"
go get -u github.com/tomnomnom/unfurl 
echo "done"

echo "installing waybackurls"
go get github.com/tomnomnom/waybackurls
echo "done"

echo "installing ffuf"
go get -u github.com/ffuf/ffuf
echo "done"

echo "installing naabu"
GO111MODULE=on go get -v github.com/projectdiscovery/naabu/v2/cmd/naabu
echo "done"

echo "installing gau"
GO111MODULE=on go get -u -v github.com/lc/gau
echo "done"

echo "installing subfinder"
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
echo "done"

echo "installing nuclei"
GO111MODULE=on go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
echo "done"

echo "installing httpx"
GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx
echo "done"

echo "installing qsreplace"
go get -u github.com/tomnomnom/qsreplace
echo "done"

echo "installing anew"
go get -u github.com/tomnomnom/anew
echo "done"

echo "installing Gf"
go get -u github.com/tomnomnom/gf
echo "done installing gf, dont forget to add the patterns"

echo "Gf patterns"
cp -r $GOPATH/src/github.com/tomnomnom/gf/examples ~/.gf
echo "installing GF patterns"
cd ~
git clone https://github.com/1ndianl33t/Gf-Patterns.git
mv ~/Gf-Patterns/*.json ~/.gf


echo -e "\n\n\n\n\n\n\n\n\n\n\nDone! All tools are set up in ~/tools"


ls -la

echo "create a recon folder in ~/"
mkdir ~/gorecon


echo " L       A       T       O       M   !"


echo " happy hacking!"