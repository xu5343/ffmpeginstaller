
# automatically installer ffmpeg scripts
it's free  

 * install ffmpeg ffprobe qt-faststart
 * install mplayer mencoder
 * install mp4box flvtool2 yamdi
 * install mediainfo neroaccenc 
 * working CentOS 7.* 64bit, other not testing

### Update
 * add NVIDIA CUDA   
 * add libvpx
 * add x265
 * update something soft version

### Installer  -V1 （CentOS 7 64bit）
```
yum install git -y 
cd /usr/local/src  
git clone https://github.com/xu5343/ffmpeginstaller.git ffmpeginstaller  
cd ffmpeginstaller  
sh install.sh  
```

### Installer  -V2 （CentOS 8 64bit）
```
yum install -y git wget
cd /opt
git clone https://github.com/hostsoft/ffmpegtoolkit.git ffmpegtoolkit
cd ffmpegtoolkit
bash install.sh
```
  
### Check Path  
```
which {php,ffmpeg,ffprobe,qt-faststart,mplayer,mencoder,flvtool2,MP4Box,yamdi,mediainfo,neroAacEnc}  
```
```
/usr/local/bin/php  
/usr/local/bin/ffmpeg  
/usr/local/bin/ffprobe  
/usr/local/bin/qt-faststart  
/usr/local/bin/mplayer  
/usr/local/bin/mencoder  
/usr/local/bin/flvtool2  
/usr/local/bin/MP4Box  
/usr/local/bin/yamdi  
/usr/local/bin/mediainfo  
/usr/local/bin/neroAacEnc  
```
