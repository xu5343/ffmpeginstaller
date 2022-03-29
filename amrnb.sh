#!/bin/bash
RED='\033[01;31m'
RESET='\033[0m'
INSTALL_SDIR='/usr/src/ffmpegscript'
WGET_URL=`cat ./url.txt`
SOURCE_URL='http://www.penguin.cz/~utx/ftp/amr'
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_package='amrnb-11.0.0.0.tar.bz2'
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET
amr=$_package
ldconfig
   cd $INSTALL_SDIR
echo "removing old source"
   rm -vrf amrnb*
   #wget $SOURCE_URL/$_package
   wget $WGET_URL/$_package
   tar -xvjf $amr
   cd amrnb-11.0.0.0/
   ./configure --prefix=$INSTALL_DDIR
make -j$cpu
make install

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
