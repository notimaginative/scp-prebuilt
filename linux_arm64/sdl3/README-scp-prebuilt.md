SDL version 3.4.14 built on Ubuntu 22.04 (docker)

[SDL3-3.4.14.tar.gz](https://github.com/libsdl-org/SDL/releases/download/release-3.4.14/SDL3-3.4.14.tar.gz)

Set up prerequisites:

```bash
apt update && apt upgrade
apt install build-essential gcc-9 g++-9 git make pkg-config cmake ninja-build gnome-desktop-testing libasound2-dev libpulse-dev libaudio-dev libfribidi-dev libjack-dev libsndio-dev libx11-dev libxext-dev libxrandr-dev libxcursor-dev libxfixes-dev libxi-dev libxss-dev libxtst-dev libxkbcommon-dev libdrm-dev libgbm-dev libgl1-mesa-dev libgles2-mesa-dev libegl1-mesa-dev libdbus-1-dev libibus-1.0-dev libudev-dev libthai-dev libusb-1.0-0-dev libpipewire-0.3-dev libwayland-dev libdecor-0-dev liburing-dev libunwind-dev
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 90 --slave /usr/bin/g++ g++ /usr/bin/g++-9
```

Build:

```bash
cd SDL3-3.4.14
cmake -B build.`uname -m` .
cd build.`uname -m`
make
strip --strip-unneeded libSDL3.so.0.4.14
```
