cat /etc/os-release
clear
clear
clear
dnf search ncurses
clear
localectl
clear
gcc
clear
cls
dnf -y group install "Development Tools"
dnf -y install perl-Pod-Html perl-IPC-Cmd
clear
ls
pwd
echo ~
clear
ls
pwd
clear
cd ~
clear
curl -L https://www.python.org/ftp/python/3.11.7/Python-3.11.7.tgz
wget
curl -L https://www.python.org/ftp/python/3.11.7/Python-3.11.7.tgz --output Python-3.11.7.tgz
ls
clear
ls -la
tar -xfv Python-3.11.7.tgz 
tar -xvf Python-3.11.7.tgz 
clear
ls
cd Python-3.11.7
ls
cd ..
clear
ls
rm -rf Python-3.11.7
clear
ls
clear
ls
cd 
ls
ls
curl -L https://www.openssl.org/source/openssl-3.2.0.tar.gz --output openssl-3.2.0.tar.gz
curl -L https://www.openssl.org/source/openssl-3.2.0.tar.gz.sha256 --output openssl-3.2.0.tar.gz.sha256
curl -L https://www.python.org/ftp/python/3.11.7/Python-3.11.7.tgz.asc --output Python-3.11.7.tgz.asc
clear
curl -L https://www.python.org/ftp/python/3.11.7/Python-3.11.7.tgz.sigstore --output Python-3.11.7.tgz.sigstore
clear
ls
clear
ls -la
curl -L https://www.sqlite.org/snapshot/sqlite-snapshot-202312051945.tar.gz --output sqlite-snapshot-202312051945.tar.gz  
clear
ls
cat openssl-3.2.0.tar.gz.sha256 
echo "853eaee4a221ede366cb4d6cd4f2261b82f3bf3e44d93b4f5c87dc99ce9ba2e5" >> sqlite-snapshot-202312051945.tar.gz.sha256
clear
ls -la
sha256sum
sha256sum sqlite-snapshot-202312051945.tar.gz
cat sqlite-snapshot-202312051945.tar.gz.sha256 
sha256sum openssl-3.2.0.tar.gz
cat openssl-3.2.0.tar.gz.sha256 
clear
sha3
sha256
clear
sha256sum
clear
ls -la
sha256sum sqlite-snapshot-202312051945.tar.gz
mv sqlite-snapshot-202312051945.tar.gz.sha256 sqlite-snapshot-202312051945.tar.gz.sha3256 
clear
ls
clear
ls
exit
clear
bash
exit
ls
clear
cd
ls -la
ls
clear
vi install.sh
ls -la
vi install.sh
clear
ls -al
vi install.sh
clear
vi install.sh 
ls -al
vi install.sh 
clear
ls
clear
vi install.sh 
topdir=`pwd`
OPENSSL_VERSION="3.2.0"
PYTHON311_VERSION="3.11.7"
cd $topdir
vi install.sh 
tar -xvf openssl-${OPENSSL_VERSION}.tar.gz
vi install.sh 
cd openssl-${OPENSSL_VERSION}
vi install.sh 
vi ../install.sh 
./Configure --prefix=/eai/ssl --openssldir=/eai/ssl -Wl,-rpath=\\\$\$ORIGIN/../lib64
./Configure --prefix=/eai/ssl --openssldir=/eai/ssl -Wl,-rpath=\\\$\$ORIGIN/../lib64
vi ../install.sh 
clear
make
make install
clear
cd $topdir
clear
ldd /eai/ssl/bin/openssl 
clear
ls -la
/eai/ssl/bin/openssl dgst -sha3-256 sqlite-snapshot-202312051945.tar.gz
cat sqlite-snapshot-202312051945.tar.gz.sha3256 
clear
vi install.sh 
clear
exit
ls /eai
clear
cd 
clear
vi install.sh 
topdir=`pwd`
clear
vi install.sh 
tar -xvf sqlite-snapshot-202312051945.tar.gz
vi install.sh 
clear
cd sqlite-snapshot-202312051945
clear
ls
vi ../install.sh 
clear
make verify-source
clear
vi ../install.sh 
clear
cat ./configure
clear
./configure --help
./configure --prefix=/eai/sqlite
make verify-source
make
make install
clear
cd
/eai/sqlite/bin/sqlite3 
/eai/sqlite/bin/sqlite3 version
clear
exit
clear
cd
ls -la
clear
vi install.sh 
vi install.sh 
clear
PYTHON311_VERSION="3.11.7"
vi install.sh 
clear
topdir=`pwd`
cd $topdir
tar -xvf Python-${PYTHON311_VERSION}.tgz
cd Python-${PYTHON311_VERSION}
clear
vi ../install.sh 
clear
cd ..
clear
ls
cd sqlite-snapshot-202312051945
./configure --help
clear
cd ..
cd Python-3.11.7
clear
CFLAGS="-I/eai/ssl/include/" CPPFLAGS="-I/eai/sqlite/include" LDFLAGS="-L/eai/ssl/lib64 -L/eai/sqlite/lib -Wl,-rpath=/eai/ssl/lib64 -Wl,-rpath=/eai/sqlite/lib" ./configure --prefix=/eai/py311 --with-openssl=/eai/ssl --with-openssl-rpath=auto --enable-optimizations
make
make install
clear
cd ..
clear
cd /eai/py311/bin/python3
/eai/py311/bin/python3
clear
vi install.sh 
chmod -R o+rx /eai
clear
exit
