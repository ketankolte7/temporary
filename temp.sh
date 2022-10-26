sudo apt-get update
sudo apt-get install update
sudo apt-get install default-jdk
java -version
sudo addgroup hadoop
sudo adduser --ingroup hadoop hadoopusr
sudo adduser hadoopusr sudo
sudo apt-get install openssh-server
su - hadoopusr
ssh-keygen -t rsa -P ""
cat $HOME/ .ssh/id_rsa.pub >> $HOME/.ssh/authorized_keys
ssh localhost
wget https://archive.apache.org/dist/hadoop/common/hadoop-2.9.0/hadoop-2.9.0.tar.gz
sudo tar xvzf hadoop-2.9.0.tar.gz
mv hadoop-2.9.0 hadoop
sudo mv hadoop /usr/local/hadoop
sudo chown -R hadoopusr /usr/local
