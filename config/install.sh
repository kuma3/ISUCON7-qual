# editor
sudo apt install -y emacs vim

# ruby
sudo apt install -y ruby-dev
sudo apt install -y ruby-bundler

# alp
cd /tmp
wget https://github.com/tkuchiki/alp/releases/download/v0.3.1/alp_linux_amd64.zip
sudo apt install -y unzip
unzip alp_linux_amd64
sudo mv -f alp /usr/local/bin/

# nginx
cd ~
sudo cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.backup
sudo cp config/nginx.conf /etc/nginx

# pt-query
cd ~
sudo cp /etc/mysql/mysql.cnf /etc/mysql/mysql.cnf.backup
sudo cp config/my.cnf /etc/mysql/

cd /tmp/
wget https://www.percona.com/downloads/percona-toolkit/3.0.4/binary/debian/xenial/x86_64/percona-toolkit_3.0.4-1.xenial_amd64.deb
sudo apt install -y libdbd-mysql-perl libdbi-perl libio-socket-ssl-perl libnet-ssleay-perl
dpkg -i percona-toolkit_3.0.4-1.xenial_amd64.deb

# netdata
curl https://my-netdata.io/kickstart.sh -o kickstart.sh
chmod +x kickstart.sh
sudo ./kickstart.sh all

# htop
sudo apt install -y htop

# restart
cd ~
make restart
