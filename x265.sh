RED='\033[01;31m'
RESET='\033[0m'
INSTALL_SDIR='/usr/src/ffmpegscript'
WGET_URL=`cat ./url.txt`
INSTALL_DDIR='/usr/local/cpffmpeg'
export cpu=`cat "/proc/cpuinfo" | grep "processor"|wc -l`
export TMPDIR=$HOME/tmp
_package='x265'
_pac265='x265_3.2.tar.gz'
clear
sleep 2
echo -e $RED"Installation of $_package ....... started"$RESET

cd $INSTALL_SDIR/
rm -rf x265*
#wget $WGET_URL/$_pac265
#tar -xzf $_pac265
#cd x265_3.2/build/linux
hg clone http://hg.videolan.org/x265
cd x265/build/linux
cmake -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=$INSTALL_DDIR -DENABLE_SHARED:bool=off ../../source
make
make install

echo -e $RED"Installation of $_package ....... Completed"$RESET
sleep 2

