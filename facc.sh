#!/bin/bash
#FFMPEG installation script

#  Copyright (C) 2007-2014 Sherin.co.in. All rights reserved.
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
RED='\033[01;31m'
RESET='\033[0m'
INSTALL_SDIR='/usr/src/ffmpegscript'
WGET_URL=`cat ./url.txt`
SOURCE_URL='http://mirror.ffmpeginstaller.com/source/faac'
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_package='faac-1.28.tar.gz'
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET
cd $INSTALL_SDIR/
rm -rf facc*
#wget $SOURCE_URL/$_package
wget $WGET_URL/$_package
tar -xvzf $_package
cd faac-1.28/
./bootstrap
./configure --prefix=$INSTALL_DDIR  --with-mp4v2      

make -j$cpu
make install

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2
