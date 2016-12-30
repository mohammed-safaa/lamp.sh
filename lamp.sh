#sh lamp.sh
sudo apt-get update
sudo apt-get install apache2
echo “Apche Installed...!!!”
sudo apt-get install mysql-server libapache2-mod-auth-mysql mysql-client
sudo mysql_install_db
sudo /usr/bin/mysql_secure_installation
echo “Mysql Installed...!!!”
sudo apt-get update
sudo apt-get install php5
sudo apt-get install php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-mhash php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl php5-json
echo “PHP Installed...!!!”
sudo apt-get update
sudo apt-get install curl
echo “Curl Installed...!!!”
sudo apt-get update
sudo apt-get install phpmyadmin apache2-utils
# sudo nano /etc/apache2/apache2.conf
# Add the phpmyadmin config to the file.
# Include /etc/phpmyadmin/apache.conf
sudo service apache2 restart
echo “Phpmyadmin Installed...!!!”
sudo apt-get update
sudo apt-get install default-jre
sudo apt-get install default-jdk
echo “java Installed...!!!”
sudo apt-get update
sudo apt-get install ssh
echo “ssh Installed...!!!”
sudo apt-get update
sudo apt-get install git
echo “git Installed...!!!”
echo “configuring your github account to create ssh connection:”
read -p "Please enter your name::" name
git config --global user.name "$name"
read -p "Please enter your git email id::" email
git config --global user.email "$email"
git config --list
read -p "Please enter your git email id::" emailgit
ssh-keygen -t rsa -C "$emailgit"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
sudo apt-get update
sudo apt-get install xclip
xclip -sel clip < ~/.ssh/id_rsa.pub
echo “1. SSH key copied just goto github settings and paste your key”
echo “2. after adding ssh key to your github account please run this command:: ssh -T git@github.com”
echo “3. for phpmyadmin configuration please do this:: sudo nano /etc/apache2/apache2.conf then add this line at the end of file and restart apache:: Include /etc/phpmyadmin/apache.conf”

echo “Hurray ! Installation Finished ….!”
