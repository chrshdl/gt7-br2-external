# gt7-br2-external
Buildroot package

## Setup
```
mkdir ~/gt7-simdash-image && cd ~/gt7-simdash-image
git clone https://git.buildroot.net/buildroot
git clone https://github.com/chrshdl/gt7-br2-external
```
## Build for Raspberry Pi 4 
```
mkdir ~/gt7-simdash-image/out  && cd ~/gt7-simdash-image/out
make raspberrypi4_64_defconfig O="${PWD}" BR2_EXTERNAL="${HOME}/gt7-simdash-image/gt7-br2-external" -C "${HOME}/gt7-simdash-image/buildroot" menuconfig
make 2>&1 | tee build.log
```
