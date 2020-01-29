#!/bin/sh

# install gedit
sudo apt-get install gedit -y

# install the backdoor factory
sudo apt-get install backdoor-factory -y

# install HTTPScreenshot
sudo apt-get install swig swig3.0 libssl-dev python-dev python-pip phantomjs -y
sudo git clone https://github.com/breenmachine/httpscreenshot.git /opt/httpscreenshot
cd /opt/httpscreenshot
sudo pip install -r requirements.txt
echo "export OPENSSL_CONF=/etc/ssl" >> ~/.bashrc

# SMBExec ???

# install Masscan
sudo apt-get install gcc make libpcap-dev
sudo git clone https://github.com/robertdavidgraham/masscan /tmp/masscan
cd /tmp/masscan
sudo make && sudo make install

# install gitrob
git clone https://github.com/michenriksen/gitrob.git /tmp/gitrob
cd /tmp/gitrob
gem install bundler
su postgres
psql -c "create role NewRole with login password 'secret';"
createdb -O gitrob gitrob
exit
sudo apt-get install libz-dev libpq-dev -y
gem install gitrob

# install CMSmap
sudo git clone https://github.com/Dionach/CMSmap.git /opt/CMSmap

# install WPScan
sudo git clone https://github.com/wpscanteam/wpscan.git /opt/wpscan
sudo ln -s /opt/wpscan/bin/wpscan /usr/bin/wpscan
sudo wpscan --update