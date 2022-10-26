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
sudo vi ~/.bashrc
source ~/.bashrc
sudo gedit /usr/local/hadoop/etc/hadoop/hadoop-env.sh
sudo gedit /usr/local/hadoop/etc/hadoop/core-site.xml
sudo gedit /usr/local/hadoop/etc/hadoop/hdfs-site.xml
sudo gedit /usr/local/hadoop/etc/hadoop/yarn-site.xml
sudo cp /usr/local/hadoop/etc/hadoop/mapred-site.xml.template /usr/local/hadoop/etc/hadoop/mapred-site.xml
sudo gedit /usr/local/hadoop/etc/hadoop/mapred-site.xml
sudo mkdir -p /usr/local/hadoop_space
sudo mkdir -p /usr/local/hadoop_space/hdfs/namenode
sudo mkdir -p /usr/local/hadoop_space/hdfs/datanode
sudo chown -R hadoopusr /usr/local/hadoop_space
hdfs namenode -format
start-dfs.sh
start-yarn.sh
jps
