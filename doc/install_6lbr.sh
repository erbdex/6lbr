sudo su -
cd
apt-get install -y terminator htop git libncurses5-dev bridge-utils 
git clone http://github.com/erbdex/6lbr.git
cd 6lbr
git checkout 1410_working
git pull origin 1410_working
git submodule update --init --recursive
cd examples/6lbr
make all_native
make tools
make plugins
make install

cp ../../docs/6lbr.conf /etc/6lbr/


