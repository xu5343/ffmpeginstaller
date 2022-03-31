#!/bin/bash
RED='\033[01;31m'
RESET='\033[0m'
WGET_URL=`cat ./url.txt`
INSTALL_SDIR='/usr/src/ffmpegscript'
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_package='flvtool2-1.0.6.tgz'
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET
flvtool_source=$_package
#install flvtool
ldconfig
   cd $INSTALL_SDIR
echo "removing old source"
   rm -vrf flvtool*
   wget $WGET_URL/$flvtool_source
   tar -zxvf  $_package
   cd flvtool2-1.0.6/
   #git clone https://github.com/unnu/flvtool2
   #cd flvtool2/
   /usr/local/cpffmpeg/bin/ruby setup.rb config
   /usr/local/cpffmpeg/bin/ruby setup.rb setup
   /usr/local/cpffmpeg/bin/ruby setup.rb install
   ln -s /usr/local/cpffmpeg/bin/flvtool2 /usr/local/bin/flvtool2
   ln -s /usr/local/cpffmpeg/bin/flvtool2 /usr/bin/flvtool2
echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
