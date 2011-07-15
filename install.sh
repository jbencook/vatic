apt-get install -y python-setuptools

rm -f turkic.tar.gz
wget http://mit.edu/vondrick/code/turkic.tar.gz
tar xzvf turkic.tar.gz
cd turkic-*
easy_install -U SQLAlchemy
easy_install -U wsgilog
python setup.py install
cd ..

rm -f pyvision.tar.gz
wget http://mit.edu/vondrick/code/pyvision.tar.gz
tar xzvf pyvision.tar.gz
cd pyvision-*
apt-get install -y python-dev
apt-get install -y libavcodec-dev libavformat-dev libswscale-dev
apt-get install -y libjpeg libjpeg-dev
apt-get install -y libfreetype6 libfreetype6-dev
easy_install -U pil
easy_install -U cython
easy_install -U numpy
python setup.py install
cd ..

apt-get install -y apache2
apt-get install -y libapache2-mod-wsgi

apt-get install -y mysql-server-5.1 mysql-client-5.1
apt-get install -y libmysqlclient-dev
easy_install -U mysql-python

easy_install -U munkres
easy_install -U parsedatetime

echo "*****************************************************"
echo "*** Please consult README to finish installation. ***"
echo "*****************************************************"