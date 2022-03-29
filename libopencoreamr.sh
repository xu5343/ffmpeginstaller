#!/bin/bash
RED='\033[01;31m'
RESET='\033[0m'
INSTALL_SDIR='/usr/src/ffmpegscript'
WGET_URL=`cat ./url.txt`
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_package='opencore-amr-0.1.2.tar.gz'
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET
libopencoreamr=$_package
ldconfig
cd $INSTALL_SDIR
echo "removing old source"
   rm -vrf opencore*
   wget $WGET_URL/$_package
   tar -zxvf $_package
   cd opencore-amr-0.1.2/
   ./configure --prefix=$INSTALL_DDIR 

make -j$cpu
make install

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
